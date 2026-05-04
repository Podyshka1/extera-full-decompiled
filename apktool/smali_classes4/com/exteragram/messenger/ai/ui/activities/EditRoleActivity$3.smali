.class Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$3;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity$3;->this$0:Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;

    invoke-static {v0}, Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;->-$$Nest$fgetnameFieldContainer(Lcom/exteragram/messenger/ai/ui/activities/EditRoleActivity;)Lorg/telegram/ui/Components/OutlineTextContainerView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->RoleName:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x40

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "%s \u2022 %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
