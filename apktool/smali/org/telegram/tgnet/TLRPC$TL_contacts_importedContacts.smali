.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_importedContacts"
.end annotation


# instance fields
.field public imported:Ljava/util/ArrayList;

.field public popular_invites:Ljava/util/ArrayList;

.field public retry_contacts:Ljava/util/ArrayList;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32101
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 32104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    .line 32105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    .line 32106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    .line 32107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;
    .locals 2

    const v0, 0x77d01c3b

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32110
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;-><init>()V

    .line 32111
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 32115
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    .line 32116
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    .line 32117
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    .line 32118
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x77d01c3b

    .line 32122
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 32123
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 32124
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->popular_invites:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 32125
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 32126
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
