.class public Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_chatlists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_chatlists_editExportedInvite"
.end annotation


# static fields
.field public static final constructor:I = 0x653db63d


# instance fields
.field public chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

.field public flags:I

.field public peers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputPeer;",
            ">;"
        }
    .end annotation
.end field

.field public revoked:Z

.field public slug:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 287
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->peers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 298
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x653db63d

    .line 302
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 303
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->revoked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->flags:I

    .line 304
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 305
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->chatlist:Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/tl/TL_chatlists$TL_inputChatlistDialogFilter;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 307
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 310
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_chatlists$TL_chatlists_editExportedInvite;->peers:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
