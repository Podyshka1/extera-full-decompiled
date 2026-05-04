.class Lorg/telegram/ui/Components/HashtagActivity$5;
.super Lorg/telegram/ui/Components/SharedMediaLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/HashtagActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/HashtagActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/HashtagActivity;Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 15

    move-object/from16 v0, p1

    .line 203
    iput-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$5;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;IILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public addActionButtons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canShowSearchItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected customTabs()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected drawBackgroundWithBlur(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method protected getInitialTab()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getStoriesHashtag()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$5;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->-$$Nest$fgethashtag(Lorg/telegram/ui/Components/HashtagActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoriesHashtagUsername()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/HashtagActivity$5;->this$0:Lorg/telegram/ui/Components/HashtagActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/HashtagActivity;->-$$Nest$fgetusername(Lorg/telegram/ui/Components/HashtagActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected includeSavedDialogs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected includeStories()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateBlur()V
    .locals 0

    return-void
.end method

.method protected isArchivedOnlyStoriesView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSearchingStories()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isStoriesView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActionModeSelectedUpdate(Landroid/util/SparseArray;)V
    .locals 0

    return-void
.end method

.method protected onSearchStateChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onTabProgress(F)V
    .locals 0

    return-void
.end method

.method protected onTabScroll(Z)V
    .locals 0

    return-void
.end method

.method protected showActionMode(Z)V
    .locals 0

    return-void
.end method
