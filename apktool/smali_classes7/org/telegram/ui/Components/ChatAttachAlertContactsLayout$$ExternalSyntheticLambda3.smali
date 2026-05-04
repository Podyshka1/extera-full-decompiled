.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    return-void
.end method


# virtual methods
.method public final didSelectContact(Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V
    .locals 9

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-wide/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->$r8$lambda$Q67E6eKfltpFtKyHElW5CIFJFIc(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Lorg/telegram/tgnet/TLRPC$User;ZIJZJ)V

    return-void
.end method

.method public synthetic didSelectContacts(Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p9}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate$-CC;->$default$didSelectContacts(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$PhonebookShareAlertDelegate;Ljava/util/ArrayList;Ljava/lang/String;ZIJZJ)V

    return-void
.end method
