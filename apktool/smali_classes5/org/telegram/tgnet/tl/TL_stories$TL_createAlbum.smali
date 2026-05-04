.class public Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_createAlbum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/tgnet/TLMethod;"
    }
.end annotation


# static fields
.field public static final constructor:I = -0x5c9c691b


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public stories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3027
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    .line 3032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->stories:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 3027
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;
    .locals 0

    .line 3044
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_stories$TL_storyAlbum;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x5c9c691b

    .line 3036
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 3037
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 3038
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 3039
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stories$TL_createAlbum;->stories:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeInt(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
