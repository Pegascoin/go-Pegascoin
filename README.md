## Pegascoin Blockcchain in Go
Pegascoin Go client(GPG) is a modified blockchain based on Ethereum protocol in Go language.
## Building the source
Building GPG(go-Pegascoin) requires both a Go and a C compiler. You can install them using your favorite package 
manager. Once the dependencies are installed, run: `make gpg`
## Setup cross platform build

    apt update
    apt install -y docker.io
    apt install -y golang
    git clone https://github.com/Pegascoin/go-Pegascoin.git
    sudo chmod -R 777 go-Pegascoin
    cd go-Pegascoin
    make gpg-cross

## For Windows platform build

    make gpg-windows-amd64 
## Run Pegascoin client (GPG)
`gpg console` A common error is that `gpg` is not executable. Please do `chmod +x <path-to-gpg>` to avoid this. If 
you want to run with RPC, please add more flags accordingly: `gpg --rpc --rpcapi="db,eth,net,web3,personal" 
--rpcport "8545" --rpcaddr "127.0.0.1" --rpccorsdomain "localhost" console`
## Can't find peers to sync?
Pegascoin has set up some default nodes that you can try to connect as bootstrap nodes. Once connected, the 
console will start syncing automatically. In case you can't see syncing after a long time, you may have to add 
peer(s) manually. In GPG console, add knowing peer with its enode information: `> admin.addPeer("{enode info}")`

admin.addPeer("enode://d347c787ff89602a1d8d4759abd6816f6186e7e29714294e68c723693c34dd626273ab77933070bb5772b5d662fbb4d2c4a45e8c8112069eedeab5fb7c978656@91.228.236.5:30313");
admin.addPeer("enode://d16e8e7369dfc7116a40e9ced3a36271bd6d25648e752d2bf320514d74698c26d02297ead2a8721d2eb0422f7360c136f34a7f6f540809fa044421738d0dc0ae@157.50.14.159:30313");
admin.addPeer("enode://ce8bff5e9c929d89251599c506b76657ee2a1bb4c1163cfc4fb7bf6cdf2fd7bf0766f23caddfb8f064653ce30b2326bfb089bd9cfef04610afef97d57dd7100c@31.223.39.247:30313");
admin.addPeer("enode://1dbca87f634bb102a91e55171625a73203d31c295d3c63780d80c02244245165018ac577a5eb5bed866570d574b6648e92ce0163bca0ea278c4d0c40e3060ac2@90.169.192.80:30313");
admin.addPeer("enode://19c57a971f981679be5f9c96aba3fba57e72c178b6d24a1fc7993e1cdca28f7252d0184162edf42b9a8e8e7681b8ee6c80cabb91479a9f81a74d6268f30640e9@5.104.204.2:30313");
admin.addPeer("enode://230ed44ec7e8fe495806c091d46af2707dae7e172b1090adc37dd516d869f21de674c7bf8c7368e299042735ba9c43c0c1232732aa3ebe2ab53956facc4d1eb4@78.171.171.60:30313");
admin.addPeer("enode://28c4ec871b9f300fae86b8c8b92193afbbd7a9c0f086c2656d595a3c99595b2d665a29dcecde722a6fd9cd1d3ccc93d08d16447eefd183b01b1e28199e83d2e5@93.126.87.191:30313");
admin.addPeer("enode://3035f5e3293ef4269e3dc391bb7bc453dc6f9659249dacf9dcb04b3b7dcb80eb48d42647022a8bf68c40677196b5c2c2f404c02cda9f3acf0da1455604e4441e@146.241.34.147:30313");
admin.addPeer("enode://31525b7b6359132dc3efbdd04c89f4536c551403dd6c0ed43de7d49346707c3660f74b0528f86c977d8b7c7d18262f7260f7c44a95a22629884e343dd1a4655e@95.14.137.112:30313");
admin.addPeer("enode://31e45581121817d855b870f4460f60a457e86d2c44f9a66704e03ee2de9c33718a71a607af5ba9d7a01ef3abcc0b19b250f92f97afd1f3b2b2aab3dde319e697@163.172.4.66:30313");
admin.addPeer("enode://325a05e1a0e3fcd35b6a907db9956131e38d9dbdbd1828ead6262b8f6a017484fb3b2f2c22208182b945f854deede14b9942bb1d111e8600d58402b8dffef3ba@193.219.117.110:30313");
admin.addPeer("enode://48ae6252f93f8331457618faa6efac6f8b15bbef3afc5aaab59cd191bd1772ef45eca0b371c42854b47c1cef337747ac661b59691528e68862ca907b78160e30@78.57.228.224:30313");
admin.addPeer("enode://56fe1dd7f72728e09fd84df7b1fcdd6a874e53ba09394a8b981bec68dd113d3374da701014fc03a7ce0141b5254c455d7d5ee3c086bf44ba618c33bfd77b84f3@188.243.221.147:30313");
admin.addPeer("enode://57e492675d6726cbff08e1e96eb1083e222ff75b7e1bdf276a74f39eaae5438ad6221370d261b261ab3746fa4898f70a8d1dc08919f2c60d36647d13f9d94d8c@91.237.94.13:30313");
admin.addPeer("enode://5a92ed3eeb9bc21fc3cf6949f0d3585797effee01cba71b4fc28d4f9b8c7e6427015a2d091590174d6b211eecbbc5641780adff7dce3e18ee4bfeb25faddf678@173.212.200.9:30313");
admin.addPeer("enode://664704df53ede662dc4d25cc91d4e1e073ee1496c1229f61345202fa6ba1d292a53c5a45b8b6aa2debf02e9440912a14a03195f977d8a92c7d921b64fe224b4a@201.110.101.203:30313");
admin.addPeer("enode://6e81650a029bf4e9698a2d1f72cfc0f04280b27e71e85d9aec5e5b5f0732338008e470a9a3223f35f2f7cd745642dbdfdc633c12c6f0507ebef935919d5d104f@78.171.171.60:30313");
admin.addPeer("enode://88a8a6c33bd8c7294b7f2ff831078df79fec1a4bca332cc5b803d9c94903713707aecd4ca77958d878e2f4ebaa66f9f0cae0d59a2ac138cd09a96cf05c267fc8@81.214.207.119:30313");
admin.addPeer("enode://90666ed0a34c3a87114eea78b9c37db3ee48742e934b1368847e30cad751c031847c17e2b5aec5eb2355da24038b01345c5320739086a20c2b43275e4bb261d7@85.93.59.252:30313)"
