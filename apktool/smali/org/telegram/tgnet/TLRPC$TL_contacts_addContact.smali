.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_addContact"
.end annotation


# instance fields
.field public add_phone_privacy_exception:Z

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public id:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public last_name:Ljava/lang/String;

.field public note:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

.field public phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55615
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55627
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x2645d1ac

    .line 55631
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55632
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->add_phone_privacy_exception:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->flags:I

    .line 55633
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55634
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 55635
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->first_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 55636
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->last_name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 55637
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->phone:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 55638
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 55639
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_addContact;->note:Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    return-void
.end method
