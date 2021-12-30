import dotenv, os

if __name__ == '__main__':
    if os.getenv('override') == "True":
        dotenv.load_dotenv(override=True) #note this forces the use of the local .env file
    else:
        dotenv.load_dotenv(override=False)

    print(os.getenv('test'))
    print(os.getenv('docker_test'))
    pass 
