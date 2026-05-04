.class public abstract Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "messages_SavedReactionTags"
.end annotation


# instance fields
.field public hash:J

.field public tags:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27889
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 27890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;
    .locals 2

    const v0, -0x7764a611

    if-eq p1, v0, :cond_1

    const v0, 0x3259950a

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 27900
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;-><init>()V

    goto :goto_0

    .line 27897
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTagsNotModified;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTagsNotModified;-><init>()V

    .line 27903
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;

    return-object p0
.end method
