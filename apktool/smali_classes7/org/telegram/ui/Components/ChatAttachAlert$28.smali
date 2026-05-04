.class Lorg/telegram/ui/Components/ChatAttachAlert$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->openContactsLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 4566
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$28;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V
    .locals 10

    .line 4569
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$28;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/ChatActivity;->sendContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V

    return-void
.end method

.method public didSelectContacts(Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V
    .locals 11

    .line 4574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$28;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v1, v0

    check-cast v1, Lorg/telegram/ui/ChatActivity;

    const-wide/16 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/ChatActivity;->sendContacts(Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V

    return-void
.end method
