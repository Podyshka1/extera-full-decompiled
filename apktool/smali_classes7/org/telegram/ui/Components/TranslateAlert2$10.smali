.class Lorg/telegram/ui/Components/TranslateAlert2$10;
.super Lorg/telegram/ui/Components/TranslateAlert2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranslateAlert2;->showAlert(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;ZLorg/telegram/messenger/Utilities$CallbackReturn;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/TranslateAlert2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onDismiss:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
    .locals 0

    .line 1732
    iput-object p7, p0, Lorg/telegram/ui/Components/TranslateAlert2$10;->val$onDismiss:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Components/TranslateAlert2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1735
    invoke-super {p0}, Lorg/telegram/ui/Components/TranslateAlert2;->dismiss()V

    .line 1736
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$10;->val$onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1737
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
