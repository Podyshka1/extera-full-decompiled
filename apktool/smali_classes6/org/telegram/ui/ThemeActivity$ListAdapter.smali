.class Lorg/telegram/ui/ThemeActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private first:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemeActivity;


# direct methods
.method public static synthetic $r8$lambda$5mr-qp0vZCnQvra7n-ElGyyji0w(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->lambda$onCreateViewHolder$5(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EqDKuDsBE2ocDIDkqPyMwq8kKss(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->lambda$showOptionsForTheme$1(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OOom3wTi-Hn1NxdDN-XCe8_9a_M(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->lambda$onCreateViewHolder$4(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l3usnw9I_Zngp45BQhqlHNnbPqM(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->lambda$onCreateViewHolder$3(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sAj040uBGTC1GoitmlOFkaeDh_Q(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->lambda$onCreateViewHolder$2(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yTq1PaeCDlmt2gxUgGa3hG277WA(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->lambda$showOptionsForTheme$0(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOptionsForTheme(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->showOptionsForTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V
    .locals 0

    .line 2067
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, 0x1

    .line 2065
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->first:Z

    .line 2068
    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;I)V
    .locals 9

    .line 2317
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    goto :goto_0

    .line 2318
    :goto_1
    invoke-virtual {p1}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v8, 0x0

    if-ne p4, v0, :cond_2

    .line 2319
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result p4

    if-ne p4, v1, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_6

    .line 2321
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->-$$Nest$fgetthemeAccents(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2323
    iget-object p4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->patternSlug:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    iget p4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-eq p4, v0, :cond_3

    .line 2324
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme$PatternsLoader;->createLoader(Z)V

    .line 2327
    :cond_3
    iget p4, v3, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    iget v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    if-eq p4, v0, :cond_5

    .line 2328
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p4

    sget v0, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v2

    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v8

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v8

    aput-object v2, v5, v1

    const/4 v2, 0x0

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object v4, v5, v2

    invoke-virtual {p4, v0, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2329
    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    invoke-static {v3, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->saveCustomTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;I)V

    .line 2330
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->turnOffAutoNight(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_6

    .line 2332
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance v2, Lorg/telegram/ui/ThemePreviewActivity;

    const/16 p4, 0x64

    if-lt v0, p4, :cond_6

    move v6, v1

    goto :goto_4

    :cond_6
    move v6, v8

    :goto_4
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result p4

    if-ne p4, v1, :cond_7

    move v7, v1

    goto :goto_5

    :cond_7
    move v7, v8

    :goto_5
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZIZZ)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2336
    :goto_6
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 2337
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    const/high16 p4, 0x42500000    # 52.0f

    .line 2338
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p1, p4

    if-gez p1, :cond_8

    .line 2340
    invoke-virtual {p2, p1, v8}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_7

    :cond_8
    add-int/2addr p3, p4

    .line 2341
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-le p3, p1, :cond_9

    .line 2342
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-virtual {p2, p3, v8}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 2345
    :cond_9
    :goto_7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_8
    if-ge v8, p1, :cond_b

    .line 2347
    invoke-virtual {p2, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 2348
    instance-of p4, p3, Lorg/telegram/ui/ThemeActivity$InnerAccentView;

    if-eqz p4, :cond_a

    .line 2349
    check-cast p3, Lorg/telegram/ui/ThemeActivity$InnerAccentView;

    invoke-virtual {p3, v1}, Lorg/telegram/ui/ThemeActivity$InnerAccentView;->updateCheckedState(Z)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_b
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 4

    .line 2396
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->-$$Nest$fgetcurrentTheme(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->deleteThemeAccent(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2397
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->refreshThemeColors()V

    .line 2398
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    move v0, p3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v1

    aput-object v0, v3, p3

    const/4 p3, 0x0

    const/4 p4, 0x2

    aput-object p3, v3, p4

    const/4 p3, 0x3

    aput-object v2, v3, p3

    invoke-virtual {p1, p2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 2373
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p3, 0x2

    const/4 v0, 0x1

    if-nez p4, :cond_2

    .line 2377
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iget-object p4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-static {p2, p3, p4, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createThemeCreateDialog(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    if-ne p4, v0, :cond_4

    .line 2379
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez p2, :cond_3

    .line 2380
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {p2, p4, p1}, Lorg/telegram/messenger/MessagesController;->saveThemeToServer(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    .line 2381
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v2, p3, v1

    aput-object p1, p3, v0

    invoke-virtual {p2, p4, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 2383
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/addtheme/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2384
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_4
    if-ne p4, p3, :cond_5

    .line 2387
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance p3, Lorg/telegram/ui/ThemeSetUrlActivity;

    iget-object p4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-direct {p3, p4, p1, v1}, Lorg/telegram/ui/ThemeSetUrlActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_5
    const/4 p3, 0x3

    if-ne p4, p3, :cond_7

    .line 2389
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-nez p3, :cond_6

    goto :goto_1

    .line 2392
    :cond_6
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p4, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2393
    const-string p4, "DeleteThemeTitle"

    sget v0, Lorg/telegram/messenger/R$string;->DeleteThemeTitle:I

    invoke-static {p4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2394
    const-string p4, "DeleteThemeAlert"

    sget v0, Lorg/telegram/messenger/R$string;->DeleteThemeAlert:I

    invoke-static {p4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2395
    const-string p4, "Delete"

    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    invoke-virtual {p3, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2401
    const-string p1, "Cancel"

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2402
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2403
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 2404
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 2406
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/view/View;I)Z
    .locals 6

    const/4 p2, 0x0

    if-ltz p3, :cond_2

    .line 2354
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->-$$Nest$fgetthemeAccents(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto/16 :goto_1

    .line 2357
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->-$$Nest$fgetthemeAccents(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    .line 2358
    iget v0, p3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->id:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-boolean v0, p3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->isDefault:Z

    if-nez v0, :cond_2

    .line 2359
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2360
    const-string v1, "OpenInEditor"

    sget v2, Lorg/telegram/messenger/R$string;->OpenInEditor:I

    .line 2361
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShareTheme"

    sget v3, Lorg/telegram/messenger/R$string;->ShareTheme:I

    .line 2362
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2363
    iget-object v3, p3, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v3, :cond_1

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_theme;->creator:Z

    if-eqz v3, :cond_1

    const-string v3, "ThemeSetUrl"

    sget v4, Lorg/telegram/messenger/R$string;->ThemeSetUrl:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-string v4, "DeleteTheme"

    sget v5, Lorg/telegram/messenger/R$string;->DeleteTheme:I

    .line 2364
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/CharSequence;

    aput-object v1, v5, p2

    const/4 p2, 0x1

    aput-object v2, v5, p2

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    .line 2366
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link:I

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    .line 2372
    new-instance v2, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p3, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)V

    invoke-virtual {v0, v5, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2410
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2411
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2412
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getItemsCount()I

    move-result p3

    sub-int/2addr p3, p2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    :cond_2
    :goto_1
    return p2
.end method

.method private synthetic lambda$showOptionsForTheme$0(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 2201
    iget p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->account:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, p3, v1}, Lorg/telegram/messenger/MessagesController;->saveTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;ZZ)V

    .line 2202
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->deleteTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2203
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->access$700(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2205
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->themeListUpdated:I

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$showOptionsForTheme$1(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 2120
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    .line 2124
    iget-object p3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez p3, :cond_1

    .line 2125
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, v2}, Lorg/telegram/messenger/MessagesController;->saveThemeToServer(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    .line 2126
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    aput-object v2, p2, v1

    invoke-virtual {p3, v3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 2128
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "https://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/addtheme/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2129
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance v0, Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_2
    if-ne p3, v1, :cond_b

    .line 2133
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez p2, :cond_5

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-nez p2, :cond_5

    .line 2134
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2135
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object p3

    .line 2136
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 2137
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ThemeColors;->getStringName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, p3, v0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2139
    :cond_3
    new-instance p3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v0

    const-string v3, "default_theme.attheme"

    invoke-direct {p3, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2142
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2143
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getStringBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2149
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 2152
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p2, v0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v0

    .line 2145
    :goto_1
    :try_start_3
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    .line 2149
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_2
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object p2, v0

    .line 2152
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2154
    :cond_4
    :goto_3
    throw p1

    .line 2155
    :cond_5
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 2156
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    goto :goto_4

    .line 2158
    :cond_6
    new-instance p3, Ljava/io/File;

    iget-object p2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2160
    :cond_7
    :goto_4
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->name:Ljava/lang/String;

    .line 2161
    const-string p2, ".attheme"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2164
    :cond_8
    new-instance p2, Ljava/io/File;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->fixFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2166
    :try_start_6
    invoke-static {p3, p2}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_7

    .line 2169
    :cond_9
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.SEND"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2170
    const-string p3, "text/xml"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2171
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/16 v0, 0x18

    const-string v2, "android.intent.extra.STREAM"

    if-lt p3, v0, :cond_a

    .line 2173
    :try_start_7
    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".provider"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2174
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 2176
    :catch_4
    :try_start_8
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_5

    :catch_5
    move-exception v0

    move-object p1, v0

    goto :goto_6

    .line 2179
    :cond_a
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2181
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    const-string p3, "ShareFile"

    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_7

    .line 2183
    :goto_6
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_b
    if-ne p3, p2, :cond_c

    .line 2186
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->access$500(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 2187
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 2188
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->access$600(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2, v1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2189
    new-instance p2, Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-direct {p2}, Lorg/telegram/ui/Components/ThemeEditorView;-><init>()V

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/ThemeEditorView;->show(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void

    :cond_c
    const/4 p2, 0x3

    if-ne p3, p2, :cond_d

    .line 2192
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance p3, Lorg/telegram/ui/ThemeSetUrlActivity;

    invoke-direct {p3, p1, v2, v0}, Lorg/telegram/ui/ThemeSetUrlActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;Z)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 2194
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_e

    goto :goto_7

    .line 2197
    :cond_e
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2198
    const-string p3, "DeleteThemeTitle"

    sget v0, Lorg/telegram/messenger/R$string;->DeleteThemeTitle:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2199
    const-string p3, "DeleteThemeAlert"

    sget v0, Lorg/telegram/messenger/R$string;->DeleteThemeAlert:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2200
    const-string p3, "Delete"

    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2207
    const-string p1, "Cancel"

    sget p3, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2208
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2209
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 2210
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_f

    .line 2212
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f
    :goto_7
    return-void
.end method

.method private showOptionsForTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 12

    .line 2085
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeLoaded:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_6

    .line 2089
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2093
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    const-string v3, "ExportTheme"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v2, :cond_2

    .line 2095
    new-array v2, v4, [Ljava/lang/CharSequence;

    aput-object v5, v2, v6

    sget v5, Lorg/telegram/messenger/R$string;->ExportTheme:I

    .line 2097
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2099
    new-array v3, v4, [I

    aput v6, v3, v6

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    aput v4, v3, v1

    goto/16 :goto_5

    .line 2104
    :cond_2
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_theme;->isDefault:Z

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 2105
    :goto_1
    const-string v7, "ShareFile"

    sget v8, Lorg/telegram/messenger/R$string;->ShareFile:I

    .line 2106
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/R$string;->ExportTheme:I

    .line 2107
    invoke-static {v3, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2108
    iget-object v8, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v8, :cond_6

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$TL_theme;->isDefault:Z

    if-nez v9, :cond_5

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$TL_theme;->creator:Z

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move-object v8, v5

    goto :goto_3

    :cond_6
    :goto_2
    const-string v8, "Edit"

    sget v9, Lorg/telegram/messenger/R$string;->Edit:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 2109
    :goto_3
    iget-object v9, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-eqz v9, :cond_7

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_theme;->creator:Z

    if-eqz v9, :cond_7

    const-string v9, "ThemeSetUrl"

    sget v10, Lorg/telegram/messenger/R$string;->ThemeSetUrl:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_7
    move-object v9, v5

    :goto_4
    if-eqz v2, :cond_8

    .line 2110
    const-string v5, "Delete"

    sget v10, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :cond_8
    const/4 v10, 0x5

    new-array v11, v10, [Ljava/lang/CharSequence;

    aput-object v7, v11, v6

    aput-object v3, v11, v1

    aput-object v8, v11, v4

    const/4 v3, 0x3

    aput-object v9, v11, v3

    const/4 v7, 0x4

    aput-object v5, v11, v7

    .line 2111
    new-array v5, v10, [I

    sget v8, Lorg/telegram/messenger/R$drawable;->msg_share:I

    aput v8, v5, v6

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    aput v6, v5, v1

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    aput v6, v5, v4

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_link:I

    aput v4, v5, v3

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    aput v3, v5, v7

    move v6, v2

    move-object v3, v5

    move-object v2, v11

    .line 2119
    :goto_5
    new-instance v4, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2216
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2217
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz v6, :cond_9

    .line 2219
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getItemsCount()I

    move-result v0

    sub-int/2addr v0, v1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    :cond_9
    :goto_6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 2073
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 2732
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleFromRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetdistanceRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleToRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleUpdateLocationRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcontactsReimportRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcontactsSortRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbluetoothScoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsearchEngineRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_8

    .line 2737
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetautomaticBrightnessInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleLocationInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetswipeGestureInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetstickersInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetliteModeInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_7

    .line 2739
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightTypeInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleFromToInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsettings2Row(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnewThemeInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchatListInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbubbleRadiusInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsaveToGallerySectionRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetappIconShadowRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetlastShadowRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetstickersSectionRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmediaSoundSectionRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetotherSectionRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_6

    .line 2744
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightDisabledRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightScheduledRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightAutomaticRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightSystemDefaultRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto/16 :goto_5

    .line 2746
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetautomaticHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetpreferedHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsettingsRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgettextSizeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchatListHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbubbleRadiusHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetswipeGestureHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetselectThemeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetappIconHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmediaSoundHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetotherHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto/16 :goto_4

    .line 2752
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetautomaticBrightnessRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 2754
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleLocationRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsendByEnterRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetraiseToSpeakRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetraiseToListenRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetpauseOnRecordRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetdirectShareRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchatBlurRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetpauseOnMediaRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnextMediaTapRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsensitiveContentRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto/16 :goto_3

    .line 2758
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgettextSizeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    return p1

    .line 2760
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchatListRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    .line 2762
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbrowserRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    goto/16 :goto_2

    .line 2764
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeListRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const/16 p1, 0xb

    return p1

    .line 2766
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeAccentListRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    const/16 p1, 0xc

    return p1

    .line 2768
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbubbleRadiusRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const/16 p1, 0xd

    return p1

    .line 2770
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbackgroundRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgeteditThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcreateNewThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetliteModeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetstickersRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbrowseThemesRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    goto :goto_1

    .line 2773
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetswipeGestureRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 p1, 0xf

    return p1

    .line 2775
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemePreviewRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const/16 p1, 0x10

    return p1

    .line 2777
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeListRow2(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const/16 p1, 0x11

    return p1

    .line 2779
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsaveToGalleryOption1Row(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsaveToGalleryOption2Row(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    goto :goto_0

    .line 2781
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetappIconSelectorRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const/16 p1, 0x14

    return p1

    .line 2783
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchangeUserColor(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    const/16 p1, 0x15

    return p1

    :cond_13
    return v1

    :cond_14
    :goto_0
    const/16 p1, 0x13

    return p1

    :cond_15
    :goto_1
    const/16 p1, 0xe

    return p1

    :cond_16
    :goto_2
    const/16 p1, 0xa

    return p1

    :cond_17
    :goto_3
    const/4 p1, 0x7

    return p1

    :cond_18
    :goto_4
    const/4 p1, 0x5

    return p1

    :cond_19
    :goto_5
    const/4 p1, 0x4

    return p1

    :cond_1a
    :goto_6
    const/4 p1, 0x3

    return p1

    :cond_1b
    :goto_7
    const/4 p1, 0x2

    return p1

    :cond_1c
    :goto_8
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 2078
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    const/16 v1, 0x15

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2468
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v6, :cond_3a

    const-string v7, ""

    if-eq v3, v4, :cond_35

    const/4 v8, 0x4

    const-string v9, "AutoNightAdaptive"

    const-string v10, "AutoNightSystemDefault"

    const-string v11, "AutoNightScheduled"

    const/4 v12, 0x3

    const/4 v13, -0x1

    if-eq v3, v8, :cond_2c

    const/4 v8, 0x5

    if-eq v3, v8, :cond_1e

    const/4 v8, 0x6

    if-eq v3, v8, :cond_1d

    const/4 v8, 0x7

    if-eq v3, v8, :cond_12

    const/16 v8, 0xe

    if-eq v3, v8, :cond_b

    const/16 v8, 0x11

    if-eq v3, v8, :cond_a

    const/16 v8, 0x13

    if-eq v3, v8, :cond_8

    const/16 v7, 0x15

    if-eq v3, v7, :cond_7

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    .line 2652
    :pswitch_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView;

    .line 2653
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

    .line 2654
    invoke-virtual {v2}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->notifyDataSetChanged()V

    .line 2655
    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->-$$Nest$mfindCurrentAccent(Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)I

    move-result v3

    if-ne v3, v13, :cond_0

    .line 2657
    invoke-virtual {v2}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :cond_0
    if-eq v3, v13, :cond_4b

    .line 2660
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v4

    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 2645
    :pswitch_1
    iget-boolean v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->first:Z

    if-eqz v1, :cond_4b

    .line 2646
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->scrollToCurrentTheme(IZ)V

    .line 2647
    iput-boolean v5, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->first:Z

    return-void

    .line 2623
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v1

    check-cast v13, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 2624
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 2625
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v1, :cond_1

    move/from16 v17, v6

    goto :goto_0

    :cond_1
    move/from16 v17, v5

    :goto_0
    if-eqz v17, :cond_2

    .line 2626
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightThemeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "AutoNightThemeOff"

    sget v2, Lorg/telegram/messenger/R$string;->AutoNightThemeOff:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v17, :cond_5

    .line 2629
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v2, v6, :cond_3

    .line 2630
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightScheduled:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-ne v2, v12, :cond_4

    .line 2632
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightSystemDefault:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 2634
    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightAdaptive:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2636
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v15, v1

    .line 2638
    const-string v1, "AutoNightTheme"

    sget v2, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    sget v16, Lorg/telegram/messenger/R$drawable;->menu_night_mode_24:I

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v20}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V

    return-void

    .line 2639
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbrowserRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_4b

    .line 2640
    sget v1, Lorg/telegram/messenger/R$string;->InappBrowser:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v1, Lorg/telegram/messenger/R$string;->InappBrowserInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    sget v16, Lorg/telegram/messenger/R$drawable;->msg2_language:I

    sget-boolean v17, Lorg/telegram/messenger/SharedConfig;->inappBrowser:Z

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v20}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndIconAndCheck(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZIZZ)V

    return-void

    .line 2716
    :cond_7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    .line 2717
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;->set(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 2706
    :cond_8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/RadioButtonCell;

    .line 2707
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsaveToGalleryOption1Row(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 2708
    const-string v2, "save media only from peer chats"

    invoke-virtual {v1, v2, v7, v6, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 2710
    :cond_9
    const-string v2, "save media from all chats"

    invoke-virtual {v1, v2, v7, v6, v5}, Lorg/telegram/ui/Cells/RadioButtonCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 2701
    :cond_a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/DefaultThemesPreviewCell;

    .line 2702
    invoke-virtual {v1}, Lorg/telegram/ui/DefaultThemesPreviewCell;->updateDayNightMode()V

    return-void

    .line 2665
    :cond_b
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    const/16 v3, 0x30

    .line 2666
    iput v3, v1, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    .line 2667
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbackgroundRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_d

    .line 2668
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2669
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2670
    sget v2, Lorg/telegram/messenger/R$string;->ChangeChatBackground:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_background:I

    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchangeUserColor(Lorg/telegram/ui/ThemeActivity;)I

    move-result v4

    if-ltz v4, :cond_c

    move v5, v6

    :cond_c
    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    return-void

    .line 2671
    :cond_d
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgeteditThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_e

    .line 2672
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2673
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2674
    sget v2, Lorg/telegram/messenger/R$string;->EditCurrentTheme:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_theme:I

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    return-void

    .line 2675
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcreateNewThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_f

    .line 2676
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2677
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2678
    sget v2, Lorg/telegram/messenger/R$string;->CreateNewTheme:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_colors:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    return-void

    .line 2679
    :cond_f
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetliteModeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    const/16 v7, 0x14

    const/16 v8, 0x40

    const/16 v9, 0x3c

    if-ne v2, v3, :cond_10

    .line 2680
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2681
    sget v2, Lorg/telegram/messenger/R$string;->LiteMode:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_animations:I

    invoke-virtual {v1, v2, v3, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2682
    sget v2, Lorg/telegram/messenger/R$string;->LiteModeInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2683
    iput v9, v1, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    .line 2684
    iput v8, v1, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 2685
    iput v7, v1, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    return-void

    .line 2686
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbrowseThemesRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 2687
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2688
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {v1, v2, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2689
    sget v2, Lorg/telegram/messenger/R$string;->SettingsBrowseThemes:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_colors:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    return-void

    .line 2690
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetstickersRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 2691
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 2692
    sget v2, Lorg/telegram/messenger/R$string;->StickersName:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg2_sticker:I

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 2693
    sget v2, Lorg/telegram/messenger/R$string;->StickersNameInfo2:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2694
    iput v8, v1, Lorg/telegram/ui/Cells/TextCell;->offsetFromImage:I

    .line 2695
    iput v9, v1, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    .line 2696
    iput v7, v1, Lorg/telegram/ui/Cells/TextCell;->imageLeft:I

    return-void

    .line 2594
    :cond_12
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v7, v1

    check-cast v7, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 2595
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleLocationRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_13

    .line 2596
    const-string v1, "AutoNightLocation"

    sget v2, Lorg/telegram/messenger/R$string;->AutoNightLocation:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightScheduleByLocation:Z

    invoke-virtual {v7, v1, v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2597
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetenableAnimationsRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_14

    .line 2598
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2599
    const-string v2, "EnableAnimations"

    sget v3, Lorg/telegram/messenger/R$string;->EnableAnimations:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "view_animations"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v7, v2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2600
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsendByEnterRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_15

    .line 2601
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2602
    const-string v2, "SendByEnter"

    sget v3, Lorg/telegram/messenger/R$string;->SendByEnter:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "send_by_enter"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v7, v2, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2603
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetraiseToSpeakRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_16

    .line 2604
    const-string v1, "RaiseToSpeak"

    sget v2, Lorg/telegram/messenger/R$string;->RaiseToSpeak:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "RaiseToSpeakInfo"

    sget v2, Lorg/telegram/messenger/R$string;->RaiseToSpeakInfo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->raiseToSpeak:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2605
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetraiseToListenRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_17

    .line 2606
    const-string v1, "RaiseToListen"

    sget v2, Lorg/telegram/messenger/R$string;->RaiseToListen:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "RaiseToListenInfo"

    sget v2, Lorg/telegram/messenger/R$string;->RaiseToListenInfo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->raiseToListen:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2607
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnextMediaTapRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_18

    .line 2608
    const-string v1, "NextMediaTap"

    sget v2, Lorg/telegram/messenger/R$string;->NextMediaTap:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "NextMediaTapInfo"

    sget v2, Lorg/telegram/messenger/R$string;->NextMediaTapInfo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->nextMediaTap:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2609
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetpauseOnRecordRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_19

    .line 2610
    sget v1, Lorg/telegram/messenger/R$string;->PauseMusicOnRecord:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "PauseMusicOnRecordInfo"

    sget v2, Lorg/telegram/messenger/R$string;->PauseMusicOnRecordInfo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnRecord:Z

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2611
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetpauseOnMediaRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_1a

    .line 2612
    sget v1, Lorg/telegram/messenger/R$string;->PauseMusicOnMedia:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->pauseMusicOnMedia:Z

    invoke-virtual {v7, v1, v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2613
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetdirectShareRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_1b

    .line 2614
    const-string v1, "DirectShare"

    sget v2, Lorg/telegram/messenger/R$string;->DirectShare:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "DirectShareInfo"

    sget v2, Lorg/telegram/messenger/R$string;->DirectShareInfo:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->directShare:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2615
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsensitiveContentRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_1c

    .line 2616
    sget v1, Lorg/telegram/messenger/R$string;->ShowSensitiveContent:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v1, Lorg/telegram/messenger/R$string;->ShowSensitiveContentInfo:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->showSensitiveContent()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    return-void

    .line 2617
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchatBlurRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    if-ne v2, v1, :cond_4b

    .line 2618
    const-string v1, "BlurInChat"

    sget v2, Lorg/telegram/messenger/R$string;->BlurInChat:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->chatBlurEnabled()Z

    move-result v2

    invoke-virtual {v7, v1, v2, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2589
    :cond_1d
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/BrightnessControlCell;

    .line 2590
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightBrighnessThreshold:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/BrightnessControlCell;->setProgress(F)V

    return-void

    .line 2554
    :cond_1e
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 2555
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    .line 2556
    const-string v2, "AutoNightSchedule"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightSchedule:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2557
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetautomaticHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 2558
    const-string v2, "AutoNightBrightness"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightBrightness:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2559
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetpreferedHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2560
    const-string v2, "AutoNightPreferred"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightPreferred:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2561
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsettingsRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 2562
    const-string v2, "SETTINGS"

    sget v3, Lorg/telegram/messenger/R$string;->SETTINGS:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2563
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_24

    .line 2564
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v2

    if-ne v2, v12, :cond_23

    .line 2565
    const-string v2, "BuildMyOwnTheme"

    sget v3, Lorg/telegram/messenger/R$string;->BuildMyOwnTheme:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2567
    :cond_23
    const-string v2, "ColorTheme"

    sget v3, Lorg/telegram/messenger/R$string;->ColorTheme:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2569
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgettextSizeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 2570
    const-string v2, "TextSizeHeader"

    sget v3, Lorg/telegram/messenger/R$string;->TextSizeHeader:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2571
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetchatListHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 2572
    const-string v2, "ChatList"

    sget v3, Lorg/telegram/messenger/R$string;->ChatList:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2573
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbubbleRadiusHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 2574
    const-string v2, "BubbleRadius"

    sget v3, Lorg/telegram/messenger/R$string;->BubbleRadius:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2575
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetswipeGestureHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_28

    .line 2576
    const-string v2, "ChatListSwipeGesture"

    sget v3, Lorg/telegram/messenger/R$string;->ChatListSwipeGesture:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2577
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetselectThemeHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_29

    .line 2578
    const-string v2, "SelectTheme"

    sget v3, Lorg/telegram/messenger/R$string;->SelectTheme:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2579
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetappIconHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 2580
    sget v2, Lorg/telegram/messenger/R$string;->AppIcon:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2581
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetotherHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 2582
    const-string v2, "OtherSettings"

    sget v3, Lorg/telegram/messenger/R$string;->OtherSettings:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2583
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmediaSoundHeaderRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 2584
    const-string v2, "MediaAndSoundSettings"

    sget v3, Lorg/telegram/messenger/R$string;->MediaAndSoundSettings:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2541
    :cond_2c
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ThemeTypeCell;

    .line 2542
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightDisabledRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2e

    .line 2543
    const-string v2, "AutoNightDisabled"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightDisabled:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-nez v3, :cond_2d

    move v5, v6

    :cond_2d
    invoke-virtual {v1, v2, v5, v6}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setValue(Ljava/lang/String;ZZ)V

    return-void

    .line 2544
    :cond_2e
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightScheduledRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_30

    .line 2545
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightScheduled:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v3, v6, :cond_2f

    move v5, v6

    :cond_2f
    invoke-virtual {v1, v2, v5, v6}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setValue(Ljava/lang/String;ZZ)V

    return-void

    .line 2546
    :cond_30
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightAutomaticRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 2547
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightAdaptive:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v3, v4, :cond_31

    move v3, v6

    goto :goto_3

    :cond_31
    move v3, v5

    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightSystemDefaultRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v4

    if-eq v4, v13, :cond_32

    move v5, v6

    :cond_32
    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setValue(Ljava/lang/String;ZZ)V

    return-void

    .line 2548
    :cond_33
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightSystemDefaultRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 2549
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightSystemDefault:I

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne v3, v12, :cond_34

    goto :goto_4

    :cond_34
    move v6, v5

    :goto_4
    invoke-virtual {v1, v2, v6, v5}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setValue(Ljava/lang/String;ZZ)V

    return-void

    .line 2521
    :cond_35
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 2522
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 2523
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetautomaticBrightnessInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 2524
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightBrightnessInfo:I

    const/high16 v3, 0x42c80000    # 100.0f

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->autoNightBrighnessThreshold:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    const-string v3, "AutoNightBrightnessInfo"

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2525
    :cond_36
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleLocationInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_37

    .line 2526
    iget-object v2, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$mgetLocationSunString(Lorg/telegram/ui/ThemeActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2527
    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetswipeGestureInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 2528
    const-string v2, "ChatListSwipeGestureInfo"

    sget v3, Lorg/telegram/messenger/R$string;->ChatListSwipeGestureInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2529
    :cond_38
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetliteModeInfoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_39

    .line 2530
    const-string v2, "LiteModeInfo"

    sget v3, Lorg/telegram/messenger/R$string;->LiteModeInfo:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_39
    const/16 v2, 0xc

    .line 2532
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 2533
    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 2470
    :cond_3a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 2471
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetnightThemeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3d

    .line 2472
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-eqz v2, :cond_3c

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-nez v2, :cond_3b

    goto :goto_5

    .line 2475
    :cond_3b
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentNightThemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2473
    :cond_3c
    :goto_5
    sget v2, Lorg/telegram/messenger/R$string;->AutoNightTheme:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightThemeOff:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2477
    :cond_3d
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleFromRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    const-string v7, "%02d:%02d"

    if-ne v2, v3, :cond_3e

    .line 2478
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayStartTime:I

    div-int/lit8 v3, v2, 0x3c

    mul-int/lit8 v8, v3, 0x3c

    sub-int/2addr v2, v8

    .line 2480
    const-string v8, "AutoNightFrom"

    sget v9, Lorg/telegram/messenger/R$string;->AutoNightFrom:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v2, v4, v6

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2481
    :cond_3e
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleToRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3f

    .line 2482
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->autoNightDayEndTime:I

    div-int/lit8 v3, v2, 0x3c

    mul-int/lit8 v8, v3, 0x3c

    sub-int/2addr v2, v8

    .line 2484
    const-string v8, "AutoNightTo"

    sget v9, Lorg/telegram/messenger/R$string;->AutoNightTo:I

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v2, v4, v6

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2485
    :cond_3f
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetscheduleUpdateLocationRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_40

    .line 2486
    const-string v2, "AutoNightUpdateLocation"

    sget v3, Lorg/telegram/messenger/R$string;->AutoNightUpdateLocation:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->autoNightCityName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2487
    :cond_40
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcontactsSortRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_43

    .line 2489
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2490
    const-string v3, "sortContactsBy"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_41

    .line 2492
    const-string v2, "Default"

    sget v3, Lorg/telegram/messenger/R$string;->Default:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_41
    if-ne v2, v6, :cond_42

    .line 2494
    const-string v2, "FirstName"

    sget v3, Lorg/telegram/messenger/R$string;->SortFirstName:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 2496
    :cond_42
    const-string v2, "LastName"

    sget v3, Lorg/telegram/messenger/R$string;->SortLastName:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2498
    :goto_6
    const-string v3, "SortBy"

    sget v4, Lorg/telegram/messenger/R$string;->SortBy:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void

    .line 2499
    :cond_43
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcontactsReimportRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_44

    .line 2500
    const-string v2, "ImportContacts"

    sget v3, Lorg/telegram/messenger/R$string;->ImportContacts:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 2501
    :cond_44
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetdistanceRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_48

    .line 2503
    sget v2, Lorg/telegram/messenger/SharedConfig;->distanceSystemType:I

    if-nez v2, :cond_45

    .line 2504
    const-string v2, "DistanceUnitsAutomatic"

    sget v3, Lorg/telegram/messenger/R$string;->DistanceUnitsAutomatic:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_45
    if-ne v2, v6, :cond_46

    .line 2506
    const-string v2, "DistanceUnitsKilometers"

    sget v3, Lorg/telegram/messenger/R$string;->DistanceUnitsKilometers:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 2508
    :cond_46
    const-string v2, "DistanceUnitsMiles"

    sget v3, Lorg/telegram/messenger/R$string;->DistanceUnitsMiles:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2510
    :goto_7
    const-string v3, "DistanceUnits"

    sget v4, Lorg/telegram/messenger/R$string;->DistanceUnits:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetupdateDistance(Lorg/telegram/ui/ThemeActivity;)Z

    move-result v4

    iget-object v7, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v7}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetotherSectionRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v7

    if-ltz v7, :cond_47

    goto :goto_8

    :cond_47
    move v6, v5

    :goto_8
    invoke-virtual {v1, v3, v2, v4, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 2511
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fputupdateDistance(Lorg/telegram/ui/ThemeActivity;Z)V

    return-void

    .line 2512
    :cond_48
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetsearchEngineRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_49

    .line 2513
    sget v2, Lorg/telegram/messenger/R$string;->SearchEngine:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/web/SearchEngine;->getCurrent()Lorg/telegram/ui/web/SearchEngine;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/web/SearchEngine;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetupdateSearchEngine(Lorg/telegram/ui/ThemeActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    return-void

    .line 2514
    :cond_49
    iget-object v3, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbluetoothScoRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 2515
    sget v2, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->recordViaSco:Z

    if-eqz v3, :cond_4a

    sget v3, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesSco:I

    goto :goto_9

    :cond_4a
    sget v3, Lorg/telegram/messenger/R$string;->MicrophoneForVoiceMessagesBuiltIn:I

    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetupdateRecordViaSco(Lorg/telegram/ui/ThemeActivity;)Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 2516
    iget-object v1, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fputupdateRecordViaSco(Lorg/telegram/ui/ThemeActivity;Z)V

    :cond_4b
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const/4 p1, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2427
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v3, p0

    goto/16 :goto_1

    .line 2460
    :pswitch_1
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->access$400(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PeerColorActivity$ChangeNameColorCell;-><init>(IJLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v3, p0

    move-object p1, v0

    goto/16 :goto_1

    .line 2457
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/AppIconsSelectorCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$300(Lorg/telegram/ui/ThemeActivity;)I

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/AppIconsSelectorCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_0

    .line 2454
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/RadioButtonCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/RadioButtonCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 2448
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/DefaultThemesPreviewCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    invoke-direct {p1, p2, v2, v3}, Lorg/telegram/ui/DefaultThemesPreviewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 2450
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2451
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 2433
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/ThemeActivity$ListAdapter$5;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$200(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$5;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    const/4 p2, 0x4

    .line 2443
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 2430
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Components/SwipeGestureSettingsView;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$100(Lorg/telegram/ui/ThemeActivity;)I

    move-result v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/SwipeGestureSettingsView;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 2423
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ThemeActivity$BubbleRadiusCell;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 2297
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/ThemeActivity$ListAdapter$4;

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ThemeActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;)V

    .line 2306
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p2, 0x0

    .line 2307
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2308
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    const/high16 p2, 0x41300000    # 11.0f

    .line 2309
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-virtual {p1, v2, v1, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2310
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 2311
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 2312
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2313
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2314
    new-instance p2, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    .line 2315
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2316
    new-instance v1, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 2353
    new-instance v1, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 2419
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x42780000    # 62.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2279
    :pswitch_9
    iput-boolean p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->first:Z

    .line 2280
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance v2, Lorg/telegram/ui/ThemeActivity$ListAdapter$3;

    iget-object v4, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v5}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v6

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetdefaultThemes(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetdarkThemes(Lorg/telegram/ui/ThemeActivity;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ThemeActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1, v2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fputthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;Lorg/telegram/ui/Cells/ThemesHorizontalListCell;)V

    .line 2291
    iget-object p1, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object p1

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    iget-boolean p2, p2, Lorg/telegram/ui/ThemeActivity;->hasThemeAccents:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->setDrawDivider(Z)V

    .line 2292
    iget-object p1, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 2293
    iget-object p1, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object p1

    .line 2294
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/high16 v1, 0x43140000    # 148.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :pswitch_a
    move-object v3, p0

    .line 2276
    new-instance p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v0, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x15

    const/16 v2, 0x3c

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;IIZ)V

    move-object p1, p2

    goto :goto_1

    :pswitch_b
    move-object v3, p0

    .line 2268
    new-instance p1, Lorg/telegram/ui/ThemeActivity$ListAdapter$2;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ThemeActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_c
    move-object v3, p0

    .line 2265
    new-instance p1, Lorg/telegram/ui/ThemeActivity$TextSizeCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    iget-object v0, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ThemeActivity$TextSizeCell;-><init>(Lorg/telegram/ui/ThemeActivity;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_d
    move-object v3, p0

    .line 2262
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_e
    move-object v3, p0

    .line 2244
    new-instance p1, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, p2, v1}, Lorg/telegram/ui/ThemeActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;I)V

    goto :goto_1

    :pswitch_f
    move-object v3, p0

    .line 2241
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_10
    move-object v3, p0

    .line 2238
    new-instance p1, Lorg/telegram/ui/Cells/ThemeTypeCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ThemeTypeCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_11
    move-object v3, p0

    .line 2235
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_12
    move-object v3, p0

    .line 2232
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_13
    move-object v3, p0

    .line 2229
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, v3, Lorg/telegram/ui/ThemeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 2463
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 2724
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2726
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ThemeTypeCell;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->selectedAutoNightType:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/ThemeTypeCell;->setTypeChecked(Z)V

    :cond_1
    return-void
.end method
