.class public Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputBusinessRecipients"
.end annotation


# static fields
.field public static final constructor:I = 0x6f8b32aa


# instance fields
.field public contacts:Z

.field public exclude_selected:Z

.field public existing_chats:Z

.field public flags:I

.field public new_chats:Z

.field public non_contacts:Z

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2705
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;
    .locals 2

    const v0, 0x6f8b32aa

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2717
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;-><init>()V

    .line 2718
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2723
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2724
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->existing_chats:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2725
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->new_chats:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2726
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->contacts:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2727
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->non_contacts:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v2, v3

    .line 2728
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->exclude_selected:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2730
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowUsers$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->users:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x6f8b32aa

    .line 2736
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2737
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->existing_chats:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    .line 2738
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->new_chats:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    .line 2739
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->contacts:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    .line 2740
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->non_contacts:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    .line 2741
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    .line 2742
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2743
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2744
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_inputBusinessRecipients;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method
