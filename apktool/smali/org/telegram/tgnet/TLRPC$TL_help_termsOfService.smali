.class public Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_help_termsOfService"
.end annotation


# instance fields
.field public entities:Ljava/util/ArrayList;

.field public flags:I

.field public id:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field public min_age_confirm:I

.field public popup:Z

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 754
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 761
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->entities:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;
    .locals 2

    const v0, 0x780a0310

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 765
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;-><init>()V

    .line 766
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 770
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 771
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->popup:Z

    .line 772
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->id:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 773
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->text:Ljava/lang/String;

    .line 774
    new-instance v0, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesStorage$$ExternalSyntheticLambda190;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->entities:Ljava/util/ArrayList;

    .line 775
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 776
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->min_age_confirm:I

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x780a0310

    .line 781
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 782
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->popup:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->flags:I

    .line 783
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 784
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->id:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 785
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->entities:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 787
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 788
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;->min_age_confirm:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_1
    return-void
.end method
