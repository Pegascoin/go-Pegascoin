// Copyright 2015 The go-ethereum Authors
// This file is part of go-ethereum.
//
// go-ethereum is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// go-ethereum is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with go-ethereum. If not, see <http://www.gnu.org/licenses/>.

package utils

import "github.com/ethereum/go-ethereum/p2p/discover"

// FrontierBootNodes are the enode URLs of the P2P bootstrap nodes running on
// the Frontier network.
var FrontierBootNodes = []*discover.Node{
	// ETH/DEV Go Bootnodes
	discover.MustParseNode("enode://a3f1465ead38f2fdfd065be0c6183b7adbc713ccb6f562c3eda81a0d3c25a1b55404d07b6d263804ea64a6360c650c108f4027a32db7bc5a6e0566d65f66d4cd@195.128.248.24:30313"), // UA
	discover.MustParseNode("enode://5ac7739ff2d0cc37ced9886943871662f2ba74ff40c92ef68374564692c1b869c854c0bc6ec028234324f1c0c17f5f022be0f09c46f1b22d0b6fb92483785ef1@81.4.104.204:30313"),  // EU
	//discover.MustParseNode("enode://0bc63520e065279b523c6acdb4022446be31f3adfe92d20108bf020d5bc8cd0daff41053afa8c393d650ee2a7061687e43f144320f962d8becc1e8a669a1f6d4@104.196.200.207:30301"),  // CENTER
	//discover.MustParseNode("enode://f17004560aadb12b547e1b2512eee7cf29771d03bc896507a465b7b30b4803746247bb07784580f9d35696e6bd37c957ab33825527fed054ba46d83559fcd9c2@104.198.8.228:30301"),		 //EAST
 // AU


	// ETH/DEV Cpp Bootnodes
	//discover.MustParseNode("enode://979b7fa28feeb35a4741660a16076f1943202cb72b6af70d327f053e248bab9ba81760f39d0701ef1d8f89cc1fbd2cacba0710a12cd5314d5e0c9021aa3637f9@5.1.83.226:30303"),
}

// TestNetBootNodes are the enode URLs of the P2P bootstrap nodes running on the
// Morden test network.
var TestNetBootNodes = []*discover.Node{
	// ETH/DEV Go Bootnodes
	discover.MustParseNode("enode://e4533109cc9bd7604e4ff6c095f7a1d807e15b38e9bfeb05d3b7c423ba86af0a9e89abbf40bd9dde4250fef114cd09270fa4e224cbeef8b7bf05a51e8260d6b8@94.242.229.4:40404"),
	discover.MustParseNode("enode://8c336ee6f03e99613ad21274f269479bf4413fb294d697ef15ab897598afb931f56beb8e97af530aee20ce2bcba5776f4a312bc168545de4d43736992c814592@94.242.229.203:30303"),

	// ETH/DEV Cpp Bootnodes
}
