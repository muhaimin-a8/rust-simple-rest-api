# Use the official Rust image
FROM rust:1.77

# Install required dependencies for Rocket (for SSL, etc.)
RUN apt-get update && apt-get install -y pkg-config libssl-dev

# Set the working directory
WORKDIR /app

# Copy the Cargo files and project source
COPY . .

# Build in release mode
RUN cargo build --release

# Expose Rocket's default port
EXPOSE 8000

# Launch the Rocket app
CMD ["./target/release/rust-rest-api"]
