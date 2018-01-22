import boto3,os
from argparse import ArgumentParser


def parseToken(token):
    accesskey = token['AccessKeyId']
    secretkey= token['SecretAccessKey']
    securitytoken = token['Token']
    return accesskey, secretkey, securitytoken
def delete_from_s3(bucketname,directoryname):
    s3 = boto3.client('s3')
    s3.delete_object(Bucket = bucketname, Key = directoryname)
    print "%s successfully deleted from %s bucket " % (directoryname,bucketname)

def upload_to_s3(bucketname, filename):
    s3 = boto3.resource('s3')
    fptr =  open("./_site/" + filename,"r+")
    ctype = "html" if "." not in filename else filename.split(".")[-1]
    if ".jpeg" in filename or ".png" in filename or ".jpg" in filename:
        ftype = filename.split(".")[-1]
        s3.Object(bucketname, filename).put(Body=fptr.read(), ContentType='image/' + ctype)
    else:
        s3.Object(bucketname, filename).put(Body=fptr.read(), ContentType='text/' + ctype)
    print "%s successfully uploaded to %s bucket " % (filename,bucketname)

def buildjekyll():
    jekyllbuild= "jekyll build"
    estatus = os.system(jekyllbuild)
    return estatus

if __name__ == "__main__":

    parser = ArgumentParser(description="Script to build site from MD pages using Jekyl")

    parser.add_argument("--bucketname", required=True,
                        help="Bucket Name to push the document")
    args = parser.parse_args()

    exitstatus = buildjekyll()
    if exitstatus == 0 :
        for root,dirs,files in os.walk("./_site"):
            for file in files:
                fname = root + "/" + file
                fname = fname.split("./_site/")[-1]
                print fname
                upload_to_s3(bucketname= args.bucketname, filename= fname)
    else:
        print "jekyll build failed"