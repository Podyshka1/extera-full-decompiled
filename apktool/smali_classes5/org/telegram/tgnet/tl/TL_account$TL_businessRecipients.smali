.class public Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_businessRecipients"
.end annotation


# static fields
.field public static final constructor:I = 0x21108ff7


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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2749
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 2758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;
    .locals 2

    const v0, 0x21108ff7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2761
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;-><init>()V

    .line 2762
    :goto_0
    const-class v1, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 2767
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2768
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->existing_chats:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2769
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->new_chats:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 2770
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->contacts:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 2771
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->non_contacts:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v2, v3

    .line 2772
    :cond_4
    iput-boolean v2, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->exclude_selected:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2774
    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeLong(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x21108ff7

    .line 2780
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2781
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->existing_chats:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    .line 2782
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->new_chats:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    .line 2783
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->contacts:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    .line 2784
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->non_contacts:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    .line 2785
    iget-boolean v1, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->exclude_selected:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    .line 2786
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 2787
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 2788
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_account$TL_businessRecipients;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serializeLong(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method
