.class Lorg/telegram/ui/ThemeActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemeActivity;


# direct methods
.method public static synthetic $r8$lambda$K1jFfbkX8WOVFqR7rKRQUUBC10Y(Lorg/telegram/ui/ThemeActivity$1;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ThemeActivity$1;->lambda$onItemClick$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ThemeActivity;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 6

    .line 1005
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x12

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$msetFontSize(Lorg/telegram/ui/ThemeActivity;I)Z

    move-result p1

    .line 1008
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$msetBubbleRadius(Lorg/telegram/ui/ThemeActivity;IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    move p1, v1

    :cond_1
    if-eqz p1, :cond_2

    .line 1012
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgettextSizeRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result p2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1013
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetbubbleRadiusRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result p2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 1015
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1016
    const-string p1, "Blue"

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 1017
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p2

    .line 1018
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->themeAccentsMap:Landroid/util/SparseArray;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    if-eqz v0, :cond_3

    .line 1020
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    invoke-direct {v2}, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;-><init>()V

    .line 1021
    const-string v3, "d"

    iput-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->slug:Ljava/lang/String;

    .line 1022
    const-string v3, "Blue_99_wp.jpg"

    iput-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->fileName:Ljava/lang/String;

    .line 1023
    iput-object v3, v2, Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;->originalFileName:Ljava/lang/String;

    .line 1024
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->overrideWallpaper:Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;

    .line 1025
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setOverrideWallpaper(Lorg/telegram/ui/ActionBar/Theme$OverrideWallpaperInfo;)V

    :cond_3
    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    .line 1028
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setCurrentAccentId(I)V

    .line 1029
    invoke-static {p1, v1, v0, v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    .line 1030
    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;->selectTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    .line 1031
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemesHorizontalListCell(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/Cells/ThemesHorizontalListCell;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 1032
    :cond_4
    iget p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->currentAccentId:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    if-eq p1, v2, :cond_6

    .line 1033
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    iget-object v3, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ThemeActivity;)I

    move-result v3

    if-ne v3, v1, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->DEFALT_THEME_ACCENT_ID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v0

    aput-object v3, v5, v1

    const/4 p2, 0x0

    const/4 v0, 0x2

    aput-object p2, v5, v0

    const/4 p2, 0x3

    aput-object v4, v5, p2

    invoke-virtual {p1, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1034
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetthemeAccentListRow(Lorg/telegram/ui/ThemeActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 1036
    :cond_6
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 13

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 983
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$mcreateNewTheme(Lorg/telegram/ui/ThemeActivity;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 985
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 986
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object p1

    .line 987
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    if-nez v0, :cond_2

    .line 988
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    invoke-virtual {v0, v4, p1}, Lorg/telegram/messenger/MessagesController;->saveThemeToServer(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)V

    .line 989
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->needShareTheme:I

    iget-object v5, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->parentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    aput-object p1, v3, v1

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 991
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/addtheme/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->info:Lorg/telegram/tgnet/TLRPC$TL_theme;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_theme;->slug:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 992
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v6, v4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_3
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 995
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$meditTheme(Lorg/telegram/ui/ThemeActivity;)V

    return-void

    :cond_4
    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    .line 997
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_5

    goto/16 :goto_4

    .line 1000
    :cond_5
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1001
    const-string v1, "ThemeResetToDefaultsTitle"

    sget v2, Lorg/telegram/messenger/R$string;->ThemeResetToDefaultsTitle:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1002
    const-string v1, "ThemeResetToDefaultsText"

    sget v2, Lorg/telegram/messenger/R$string;->ThemeResetToDefaultsText:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1003
    const-string v1, "Reset"

    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ThemeActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ThemeActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ThemeActivity$1;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1040
    const-string v1, "Cancel"

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1041
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1042
    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1043
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_f

    .line 1045
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_6
    const/4 v6, 0x5

    if-ne p1, v6, :cond_f

    .line 1048
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "themeconfig"

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1049
    const-string v7, "lastDayTheme"

    const-string v8, "Blue"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1050
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    move-object v7, v8

    .line 1053
    :cond_8
    const-string v9, "lastDarkTheme"

    const-string v10, "Dark Blue"

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1054
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v9

    if-nez v9, :cond_a

    :cond_9
    move-object p1, v10

    .line 1057
    :cond_a
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v9

    .line 1058
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1059
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "Night"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_1

    :cond_b
    :goto_0
    move-object v8, v7

    goto :goto_2

    :cond_c
    :goto_1
    move-object v10, p1

    goto :goto_2

    :cond_d
    move-object v10, p1

    goto :goto_0

    .line 1067
    :goto_2
    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1068
    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    goto :goto_3

    .line 1070
    :cond_e
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v7

    .line 1073
    :goto_3
    new-array v8, v3, [I

    .line 1074
    iget-object v9, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v9}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1075
    aget v9, v8, v2

    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    aput v9, v8, v2

    .line 1076
    aget v9, v8, v1

    iget-object v10, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v10}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    div-int/2addr v10, v3

    add-int/2addr v9, v10

    aput v9, v8, v1

    .line 1077
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->needSetDayNightTheme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v11, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v11}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$fgetmenuItem(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getIconView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v7, v12, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v12, v1

    aput-object v8, v12, v3

    aput-object v0, v12, v4

    aput-object p1, v12, v5

    aput-object v11, v12, v6

    invoke-virtual {v9, v10, v12}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1078
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ThemeActivity;->-$$Nest$mupdateRows(Lorg/telegram/ui/ThemeActivity;Z)V

    .line 1081
    iget-object p1, p0, Lorg/telegram/ui/ThemeActivity$1;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->turnOffAutoNight(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_f
    :goto_4
    return-void
.end method
