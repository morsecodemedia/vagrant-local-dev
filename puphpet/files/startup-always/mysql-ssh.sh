#ssh tunnel to AWS box
ssh -fNg -L 3307:studio-db.cchyejyaqxow.us-east-1.rds.amazonaws.com:3306 -i /var/www/keys/awc.pem ubuntu@54.88.4.11