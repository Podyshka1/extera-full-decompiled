.class final Lcom/google/android/datatransport/runtime/TransportImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/Transport;


# instance fields
.field private final name:Ljava/lang/String;

.field private final payloadEncoding:Lcom/google/android/datatransport/Encoding;

.field private final transformer:Lcom/google/android/datatransport/Transformer;

.field private final transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

.field private final transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;


# direct methods
.method public static synthetic $r8$lambda$bZYIR2AWMsK3OiMdU9QsskqwQec(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/TransportContext;Ljava/lang/String;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;Lcom/google/android/datatransport/runtime/TransportInternal;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 37
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    .line 39
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 40
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    return-void
.end method


# virtual methods
.method getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    return-object v0
.end method

.method public schedule(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/TransportScheduleCallback;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportInternal:Lcom/google/android/datatransport/runtime/TransportInternal;

    .line 51
    invoke-static {}, Lcom/google/android/datatransport/runtime/SendRequest;->builder()Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transportContext:Lcom/google/android/datatransport/runtime/TransportContext;

    .line 52
    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setTransportContext(Lcom/google/android/datatransport/runtime/TransportContext;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setEvent(Lcom/google/android/datatransport/Event;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->name:Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->transformer:Lcom/google/android/datatransport/Transformer;

    .line 55
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setTransformer(Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/TransportImpl;->payloadEncoding:Lcom/google/android/datatransport/Encoding;

    .line 56
    invoke-virtual {p1, v1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->setEncoding(Lcom/google/android/datatransport/Encoding;)Lcom/google/android/datatransport/runtime/SendRequest$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/SendRequest$Builder;->build()Lcom/google/android/datatransport/runtime/SendRequest;

    move-result-object p1

    .line 50
    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/TransportInternal;->send(Lcom/google/android/datatransport/runtime/SendRequest;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    return-void
.end method

.method public send(Lcom/google/android/datatransport/Event;)V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/android/datatransport/runtime/TransportImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/TransportImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/datatransport/runtime/TransportImpl;->schedule(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    return-void
.end method
