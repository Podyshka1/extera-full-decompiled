.class Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$4;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 193
    iget-object p2, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$4;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p2}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$fgetinitialKey(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$fputhasChanges(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;Z)V

    .line 194
    iget-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity$4;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;

    invoke-static {p1}, Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;->-$$Nest$mupdateDoneButton(Lcom/exteragram/messenger/ai/ui/activities/EditServiceActivity;)V

    return-void
.end method
