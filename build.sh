#! /bin/bash

# Install wails cli
go install github.com/wailsapp/wails/v2/cmd/wails@latest

# Build for Windows (64-bit)
GOOS=windows GOARCH=amd64 wails build

# Build for macOS (Apple Silicon, 64-bit ARM)
GOOS=darwin GOARCH=arm64 wails build

# Build for Linux (64-bit)
GOOS=linux GOARCH=amd64 wails build
