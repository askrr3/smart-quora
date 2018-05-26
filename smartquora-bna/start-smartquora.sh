export COMPOSER_CARD=admin@smartquora-bna
export COMPOSER_NAMESPACES=always
export COMPOSER_AUTHENTICATION=true
export COMPOSER_TLS=true
export COMPOSER_WEBSOCKETS=true
export COMPOSER_MULTIUSER=true
export COMPOSER_PROVIDERS='{
  "google": {
    "provider": "google",
    "module": "passport-google-oauth2",
    "clientID": "1031107078869-fhqlmu92gijelejbjq9pb52v90p2fi12.apps.googleusercontent.com",
    "clientSecret": "wortDe7f0MHGlTuMdW7T_Nf7",
    "authPath": "/auth/google",
    "callbackURL": "/auth/google/callback",
    "scope": "https://www.googleapis.com/auth/plus.login",
    "successRedirect": "http://ec2-35-168-150-155.compute-1.amazonaws.com:8081/index.html",
    "failureRedirect": "/"
  }
}'
export COMPOSER_DATASOURCES='{
    "db": {
        "name": "db",
        "connector": "mongodb",
        "host": "ds231740.mlab.com",
        "port": "31740",
	"database": "smartquora",
	"user": "quora-admin",
	"password": "quora123"
    }
}'
composer-rest-server 

