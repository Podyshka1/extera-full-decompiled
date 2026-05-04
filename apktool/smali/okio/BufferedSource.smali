.class public interface abstract Lokio/BufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# virtual methods
.method public abstract exhausted()Z
.end method

.method public abstract getBuffer()Lokio/Buffer;
.end method

.method public abstract indexOf(Lokio/ByteString;JJ)J
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract peek()Lokio/BufferedSource;
.end method

.method public abstract rangeEquals(JLokio/ByteString;)Z
.end method

.method public abstract readAll(Lokio/Sink;)J
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteArray()[B
.end method

.method public abstract readByteString()Lokio/ByteString;
.end method

.method public abstract readByteString(J)Lokio/ByteString;
.end method

.method public abstract readDecimalLong()J
.end method

.method public abstract readFully(Lokio/Buffer;J)V
.end method

.method public abstract readFully([B)V
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readIntLe()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readLongLe()J
.end method

.method public abstract readShort()S
.end method

.method public abstract readShortLe()S
.end method

.method public abstract readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract readUtf8(J)Ljava/lang/String;
.end method

.method public abstract readUtf8CodePoint()I
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict(J)Ljava/lang/String;
.end method

.method public abstract request(J)Z
.end method

.method public abstract require(J)V
.end method

.method public abstract select(Lokio/Options;)I
.end method

.method public abstract skip(J)V
.end method
