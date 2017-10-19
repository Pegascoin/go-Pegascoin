# This Makefile is meant to be used by people that do not usually work with Go source code.
# If you know what GOPATH is then you probably don't need to bother with make.

.PHONY: gpg gpg-cross evm all test clean
.PHONY: gpg-linux gpg-linux-386 gpg-linux-amd64 gpg-linux-mips64 gpg-linux-mips64le
.PHONY: gpg-linux-arm gpg-linux-arm-5 gpg-linux-arm-6 gpg-linux-arm-7 gpg-linux-arm64
.PHONY: gpg-darwin gpg-darwin-386 gpg-darwin-amd64
.PHONY: gpg-windows gpg-windows-386 gpg-windows-amd64
.PHONY: gpg-android gpg-ios

GOBIN = build/bin
GO ?= latest

gpg:
	build/env.sh go run build/ci.go install ./cmd/gpg
	@echo "Done building."
	@echo "Run \"$(GOBIN)/gpg\" to launch pegascoin."

evm:
	build/env.sh go run build/ci.go install ./cmd/evm
	@echo "Done building."
	@echo "Run \"$(GOBIN)/evm to start the evm."

all:
	build/env.sh go run build/ci.go install

test: all
	build/env.sh go run build/ci.go test

clean:
	rm -fr build/_workspace/pkg/ Godeps/_workspace/pkg $(GOBIN)/*

# Cross Compilation Targets (xgo)
gpg-cross: gpg-linux gpg-darwin gpg-windows
	@echo "Full cross compilation done:"
	@ls -ld $(GOBIN)/gpg-*

gpg-linux: gpg-linux-386 gpg-linux-amd64 gpg-linux-mips64 gpg-linux-mips64le
	@echo "Linux cross compilation done:"
	@ls -ld $(GOBIN)/gpg-linux-*

gpg-linux-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/386 -v ./cmd/gpg
	@echo "Linux 386 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-linux-* | grep 386

gpg-linux-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/amd64 -v ./cmd/gpg
	@echo "Linux amd64 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-linux-* | grep amd64

gpg-linux-mips64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/mips64 -v ./cmd/gpg
	@echo "Linux MIPS64 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-linux-* | grep mips64

gpg-linux-mips64le:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=linux/mips64le -v ./cmd/gpg
	@echo "Linux MIPS64le cross compilation done:"
	@ls -ld $(GOBIN)/gpg-linux-* | grep mips64le

gpg-darwin: gpg-darwin-386 gpg-darwin-amd64
	@echo "Darwin cross compilation done:"
	@ls -ld $(GOBIN)/gpg-darwin-*

gpg-darwin-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=darwin/386 -v ./cmd/gpg
	@echo "Darwin 386 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-darwin-* | grep 386

gpg-darwin-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=darwin/amd64 -v ./cmd/gpg
	@echo "Darwin amd64 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-darwin-* | grep amd64

gpg-windows: gpg-windows-386 gpg-windows-amd64
	@echo "Windows cross compilation done:"
	@ls -ld $(GOBIN)/gpg-windows-*

gpg-windows-386:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=windows/386 -v ./cmd/gpg
	@echo "Windows 386 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-windows-* | grep 386

gpg-windows-amd64:
	build/env.sh go run build/ci.go xgo -- --go=$(GO) --dest=$(GOBIN) --targets=windows/amd64 -v ./cmd/gpg
	@echo "Windows amd64 cross compilation done:"
	@ls -ld $(GOBIN)/gpg-windows-* | grep amd64
