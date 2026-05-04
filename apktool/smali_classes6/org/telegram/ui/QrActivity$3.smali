.class Lorg/telegram/ui/QrActivity$3;
.super Lorg/telegram/ui/QrActivity$ThemeListViewController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/QrActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/QrActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/Window;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lorg/telegram/ui/QrActivity$3;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/QrActivity$ThemeListViewController;-><init>(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method protected setDarkTheme(Z)V
    .locals 3

    .line 365
    invoke-super {p0, p1}, Lorg/telegram/ui/QrActivity$ThemeListViewController;->setDarkTheme(Z)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/QrActivity$3;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/QrActivity;->-$$Nest$fputisCurrentThemeDark(Lorg/telegram/ui/QrActivity;Z)V

    .line 367
    iget-object p1, p0, Lorg/telegram/ui/QrActivity$3;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {p1}, Lorg/telegram/ui/QrActivity;->-$$Nest$fgetcurrentTheme(Lorg/telegram/ui/QrActivity;)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/QrActivity$3;->this$0:Lorg/telegram/ui/QrActivity;

    invoke-static {v1}, Lorg/telegram/ui/QrActivity;->-$$Nest$fgetselectedPosition(Lorg/telegram/ui/QrActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/QrActivity;->-$$Nest$monItemSelected(Lorg/telegram/ui/QrActivity;Lorg/telegram/ui/ActionBar/EmojiThemes;IZ)V

    return-void
.end method
