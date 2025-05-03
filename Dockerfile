FROM 1.85.1-slim

RUN apt-get update && apt-get install -y pkg-config libssl-dev

WORKDIR /app

COPY . .


RUN cargo build --release

EXPOSE 8000

CMD ["./target/release/rust-rest-api"]
