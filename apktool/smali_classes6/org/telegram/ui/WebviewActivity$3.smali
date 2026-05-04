.class Lorg/telegram/ui/WebviewActivity$3;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WebviewActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WebviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WebviewActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private isInternalUrl(Ljava/lang/String;)Z
    .locals 4

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 239
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    const-string v2, "tg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v2}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgettype(Lorg/telegram/ui/WebviewActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 243
    :try_start_0
    const-string v0, "tg:statsrefresh"

    const-string v1, "tg://telegram.org"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    const-string v1, "params"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$mreloadStats(Lorg/telegram/ui/WebviewActivity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 246
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    .line 251
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 254
    const-string v0, "com.android.browser.application_id"

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return v3

    :cond_2
    return v1
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 267
    invoke-direct {p0, p2}, Lorg/telegram/ui/WebviewActivity$3;->isInternalUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11

    .line 280
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 282
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 283
    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgettype(Lorg/telegram/ui/WebviewActivity;)I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "alpha"

    const-string v5, "scaleY"

    const-string v6, "scaleX"

    if-nez p2, :cond_0

    .line 284
    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressItem(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressItem(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 286
    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object p2

    new-array v7, v3, [F

    fill-array-data v7, :array_0

    .line 287
    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v7, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v7}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v7

    new-array v8, v3, [F

    fill-array-data v8, :array_1

    .line 288
    invoke-static {v7, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v8}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v8

    new-array v9, v3, [F

    fill-array-data v9, :array_2

    .line 289
    invoke-static {v8, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v9}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressItem(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    .line 290
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_3

    invoke-static {v9, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v9, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v9}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressItem(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    .line 291
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_4

    invoke-static {v9, v5, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v9, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v9}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressItem(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    .line 292
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getContentView()Landroid/view/View;

    move-result-object v9

    new-array v10, v3, [F

    fill-array-data v10, :array_5

    invoke-static {v9, v4, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object p2, v9, v2

    aput-object v7, v9, v1

    aput-object v8, v9, v3

    aput-object v6, v9, v0

    const/4 p2, 0x4

    aput-object v5, v9, p2

    const/4 p2, 0x5

    aput-object v4, v9, p2

    .line 286
    invoke-virtual {p1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 294
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {p2}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object p2

    new-array v7, v3, [F

    fill-array-data v7, :array_6

    .line 295
    invoke-static {p2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v6, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v6}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v6

    new-array v7, v3, [F

    fill-array-data v7, :array_7

    .line 296
    invoke-static {v6, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/WebviewActivity$3;->this$0:Lorg/telegram/ui/WebviewActivity;

    invoke-static {v6}, Lorg/telegram/ui/WebviewActivity;->-$$Nest$fgetprogressView(Lorg/telegram/ui/WebviewActivity;)Lorg/telegram/ui/Components/ContextProgressView;

    move-result-object v6

    new-array v7, v3, [F

    fill-array-data v7, :array_8

    .line 297
    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object v5, v0, v1

    aput-object v4, v0, v3

    .line 294
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 299
    :goto_0
    new-instance p2, Lorg/telegram/ui/WebviewActivity$3$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/WebviewActivity$3$1;-><init>(Lorg/telegram/ui/WebviewActivity$3;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 309
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 310
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 275
    invoke-direct {p0, p2}, Lorg/telegram/ui/WebviewActivity$3;->isInternalUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
