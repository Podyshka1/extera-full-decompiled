.class Lorg/telegram/ui/UserInfoActivity$3;
.super Lorg/telegram/ui/Cells/EditTextCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/UserInfoActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/UserInfoActivity;Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/UserInfoActivity$3;->this$0:Lorg/telegram/ui/UserInfoActivity;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Cells/EditTextCell;-><init>(Landroid/content/Context;Ljava/lang/String;ZZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/EditTextCell;->onTextChanged(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lorg/telegram/ui/UserInfoActivity$3;->this$0:Lorg/telegram/ui/UserInfoActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/UserInfoActivity;->-$$Nest$mcheckDone(Lorg/telegram/ui/UserInfoActivity;Z)V

    return-void
.end method
