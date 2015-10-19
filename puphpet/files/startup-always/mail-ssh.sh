#ssh tunnel to AWS box
ssh -fNg -L 2525:localhost:25 -i /var/www/keys/awc.pem ubuntu@54.88.4.11

