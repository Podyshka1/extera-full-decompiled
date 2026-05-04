.class Lorg/telegram/ui/Components/ShareAlert$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$qeOTmfWszTt3NyiLhyHdVUEr9e8(Lorg/telegram/ui/Components/ShareAlert$24;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert$24;->lambda$afterTextChanged$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$afterTextChanged$0()V
    .locals 2

    .line 1730
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$24;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount(I)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1729
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$24$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ShareAlert$24$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$24;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

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
