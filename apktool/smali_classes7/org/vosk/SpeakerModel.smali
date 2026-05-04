.class public Lorg/vosk/SpeakerModel;
.super Lcom/sun/jna/PointerType;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-static {p1}, Lorg/vosk/LibVosk;->vosk_spk_model_new(Ljava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 31
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to create a speaker model"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/sun/jna/PointerType;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_spk_model_free(Lcom/sun/jna/Pointer;)V

    return-void
.end method
