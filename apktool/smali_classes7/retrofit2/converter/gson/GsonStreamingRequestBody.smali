.class final Lretrofit2/converter/gson/GsonStreamingRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field private final adapter:Lcom/google/gson/TypeAdapter;

.field private final gson:Lcom/google/gson/Gson;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 34
    iput-object p1, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->gson:Lcom/google/gson/Gson;

    .line 35
    iput-object p2, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->adapter:Lcom/google/gson/TypeAdapter;

    .line 36
    iput-object p3, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 41
    sget-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->adapter:Lcom/google/gson/TypeAdapter;

    iget-object v2, p0, Lretrofit2/converter/gson/GsonStreamingRequestBody;->value:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lretrofit2/converter/gson/GsonRequestBodyConverter;->writeJson(Lokio/BufferedSink;Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Object;)V

    return-void
.end method
