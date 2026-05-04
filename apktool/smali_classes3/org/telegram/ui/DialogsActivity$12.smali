.class Lorg/telegram/ui/DialogsActivity$12;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$DMenIqKuQgtbikBiZsemYQgoESc(Lorg/telegram/ui/DialogsActivity$12;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$12;->lambda$onItemClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$FAPqxq7xtFo4hsyjf6ExHyvbhnA(Lorg/telegram/ui/DialogsActivity$12;Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$12;->lambda$onItemClick$2(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$TCNzqEvLNb2z1NK8jYC9CXWHGaY(Lorg/telegram/ui/DialogsActivity$12;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$12;->lambda$onItemClick$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 4044
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0()V
    .locals 2

    .line 4090
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetpasscodeItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1()V
    .locals 2

    .line 4090
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetpasscodeItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4111
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->getDialogsCount(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-nez p2, :cond_3

    if-eqz v1, :cond_0

    .line 4115
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v5

    .line 4119
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v3, v6

    .line 4120
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    if-le v3, v6, :cond_1

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget v6, v6, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    if-le v3, v6, :cond_3

    .line 4121
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v4, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$6700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_3
    if-eqz v1, :cond_b

    const-wide/16 v18, 0x0

    if-eqz p2, :cond_7

    move v2, v5

    .line 4127
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 4128
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4129
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4131
    :cond_4
    iget v2, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    move v6, v4

    iget-object v4, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    move v7, v5

    iget-boolean v5, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    move v8, v6

    iget v6, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->color:I

    move v9, v7

    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->emoticon:Ljava/lang/String;

    move v10, v8

    iget-object v8, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    move v11, v9

    iget-object v9, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    move v12, v10

    iget-object v10, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v13, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v17, 0x0

    move v14, v11

    const/4 v11, 0x0

    move v15, v12

    const/4 v12, 0x0

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move/from16 v20, v14

    const/4 v14, 0x1

    move/from16 v21, v15

    const/4 v15, 0x0

    invoke-static/range {v1 .. v17}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    .line 4133
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 4134
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    :cond_5
    move-wide/from16 v2, v18

    .line 4138
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4140
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v4, 0x15

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_6
    move/from16 v23, v9

    move-object v9, v0

    move/from16 v0, v23

    goto/16 :goto_6

    :cond_7
    move v9, v4

    move v3, v5

    .line 4143
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move v5, v3

    .line 4144
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_8

    .line 4145
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4147
    :cond_8
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v4, v2

    .line 4148
    iget v2, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    move v14, v3

    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    move-object v6, v5

    iget-boolean v5, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    move-object v7, v6

    iget v6, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->color:I

    move-object v8, v7

    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->emoticon:Ljava/lang/String;

    move-object v10, v8

    iget-object v8, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    move v15, v9

    iget-object v9, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    move-object v11, v10

    iget-object v10, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v17, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v20, v13

    const/4 v13, 0x1

    move/from16 v22, v14

    const/4 v14, 0x1

    move/from16 v21, v15

    const/4 v15, 0x0

    move-object/from16 p2, v20

    move/from16 v0, v21

    invoke-static/range {v1 .. v17}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_9
    move-object/from16 p2, v2

    move v0, v9

    .line 4151
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_a

    move-object/from16 v13, p2

    const/4 v14, 0x0

    .line 4152
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    :goto_4
    move-object/from16 v9, p0

    move-wide/from16 v2, v18

    goto :goto_5

    :cond_a
    move-object/from16 v13, p2

    goto :goto_4

    .line 4156
    :goto_5
    iget-object v1, v9, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 4158
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v4, 0x14

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_b
    move-object v9, v0

    move-object v13, v2

    move v0, v4

    .line 4162
    iget-object v1, v9, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/FilterCreateActivity;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v13}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 4164
    :cond_c
    :goto_6
    iget-object v1, v9, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mhideActionMode(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    const/16 v2, 0xca

    if-eq v1, v2, :cond_0

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_1

    .line 4047
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4048
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SearchViewPager;->onActionBarItemClick(I)V

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_a

    .line 4052
    sget-boolean v1, Lcom/exteragram/messenger/ExteraConfig;->navigationDrawer:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mdrawerContainer(Lorg/telegram/ui/DialogsActivity;)Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->canOpenDrawer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4053
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mdrawerContainer(Lorg/telegram/ui/DialogsActivity;)Lcom/exteragram/messenger/drawer/DrawerContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/drawer/DrawerContainer;->toggleDrawer()V

    return-void

    .line 4056
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4057
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4058
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4059
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    return-void

    .line 4061
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mhideActionMode(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void

    .line 4064
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    .line 4065
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 4066
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    return-void

    .line 4070
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4071
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView;->setIsEditing(Z)V

    .line 4072
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mshowDoneItem(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void

    .line 4073
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4074
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4075
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetsearchViewPager(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    return-void

    .line 4077
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mhideActionMode(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void

    .line 4079
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetonlySelect(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfolderId(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-eqz v1, :cond_19

    .line 4080
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    return-void

    :cond_a
    if-ne v1, v4, :cond_c

    .line 4083
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_4

    .line 4086
    :cond_b
    sput-boolean v4, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 4087
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    const/4 v1, 0x2

    .line 4088
    new-array v2, v1, [I

    .line 4089
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetpasscodeItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4090
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    aget v3, v2, v3

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetpasscodeItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, v1

    add-int v9, v3, v5

    aget v2, v2, v4

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetpasscodeItem(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v1

    add-int v10, v2, v3

    new-instance v11, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$12;)V

    new-instance v12, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$12;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4091
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/NotificationsController;->showNotifications()V

    .line 4092
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcheckUi_itemPasscodeVisibility(Lorg/telegram/ui/DialogsActivity;)V

    return-void

    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    .line 4094
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v4, v4, v4}, Lorg/telegram/ui/DialogsActivity;->showSearch(ZZZ)V

    .line 4095
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfragmentSearchFieldWatcher(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/utils/SearchTextWatcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/utils/SearchTextWatcher;->toggleSearch(Z)Z

    return-void

    :cond_d
    const/16 v2, 0xa

    if-lt v1, v2, :cond_f

    const/16 v5, 0x1a

    if-ge v1, v5, :cond_f

    .line 4098
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_e

    goto/16 :goto_4

    .line 4101
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetdelegate(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v5

    .line 4102
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    sub-int/2addr v1, v2

    .line 4103
    invoke-virtual {v6, v1, v4}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 4105
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6600(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 4106
    invoke-virtual {v1, v5}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 4107
    invoke-virtual {v6, v1, v3, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    return-void

    :cond_f
    const/16 v2, 0x6d

    if-ne v1, v2, :cond_10

    .line 4109
    new-instance v1, Lorg/telegram/ui/Components/FiltersListBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 4110
    new-instance v2, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$12;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->setDelegate(Lorg/telegram/ui/Components/FiltersListBottomSheet$FiltersListBottomSheetDelegate;)V

    .line 4166
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_10
    const/16 v2, 0x6e

    const/16 v5, 0x64

    if-ne v1, v2, :cond_18

    .line 4168
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetviewPages(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->-$$Nest$fgetselectedType(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 4169
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v6, v2, v3, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->getDialogsCount(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v6, :cond_11

    .line 4173
    iget-object v2, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_11
    move v2, v3

    .line 4177
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v2, v7

    if-le v2, v5, :cond_12

    .line 4178
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FilterAddToAlertFullTitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->FilterAddToAlertFullText:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 4181
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 4182
    iget-object v2, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    .line 4183
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_13

    .line 4184
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 4185
    iget-object v7, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4186
    iget-object v7, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4188
    :cond_13
    invoke-virtual {v6}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4189
    iget-object v2, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4191
    :cond_14
    iget v7, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v8, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v9, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    iget-boolean v10, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->title_noanimate:Z

    iget v11, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->color:I

    iget-object v12, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->emoticon:Ljava/lang/String;

    iget-object v13, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v14, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v15, v6, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    invoke-static/range {v6 .. v22}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    .line 4194
    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_16

    .line 4195
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_2
    move-wide v7, v4

    goto :goto_3

    :cond_16
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 4199
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 4201
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v9, 0x15

    move-object v11, v6

    move-object v6, v2

    invoke-virtual/range {v6 .. v13}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 4203
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mhideActionMode(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void

    :cond_18
    if-eq v1, v5, :cond_1a

    const/16 v2, 0x65

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x66

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x67

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x68

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x69

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_19

    goto :goto_5

    :cond_19
    :goto_4
    return-void

    .line 4205
    :cond_1a
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$12;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2, v5, v1, v4, v3}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mperformSelectedDialogsAction(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    return-void
.end method
