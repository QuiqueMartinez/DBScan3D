# Use a minimal Linux image
FROM alpine:latest

# Install dependencies
RUN apk add --no-cache cmake g++ make

# Create a workdir
WORKDIR /app

# Copy source code to container
COPY . /app

# CConfigure and build the project
RUN cmake -B build && cmake --build build

# Execute the binary
CMD ["./build/DBScan3D"]