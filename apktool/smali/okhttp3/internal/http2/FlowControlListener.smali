.class public interface abstract Lokhttp3/internal/http2/FlowControlListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/FlowControlListener$None;
    }
.end annotation


# virtual methods
.method public abstract receivingConnectionWindowChanged(Lokhttp3/internal/http2/flowcontrol/WindowCounter;)V
.end method

.method public abstract receivingStreamWindowChanged(ILokhttp3/internal/http2/flowcontrol/WindowCounter;J)V
.end method
