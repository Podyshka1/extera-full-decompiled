.class public Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FilesMigrationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilesMigrationBottomSheet"
.end annotation


# instance fields
.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public static synthetic $r8$lambda$pBP7F9Ux5NPpZGjJZfHwwCneVIs(Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 14

    .line 234
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 235
    iput-object p1, p0, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 236
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 237
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 238
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 239
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 241
    new-instance v3, Lorg/telegram/ui/Components/StickerImageView;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-direct {v3, p1, v4}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    const/4 v4, 0x7

    .line 242
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    .line 243
    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v5, 0x90

    const/16 v6, 0x90

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x10

    .line 244
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v4, 0x800003

    .line 247
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 248
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 249
    invoke-virtual {v3, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 250
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    sget v6, Lorg/telegram/messenger/R$string;->MigrateOldFolderTitle:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41a80000    # 21.0f

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, -0x40000000    # -2.0f

    const/4 v9, 0x0

    const/high16 v10, 0x41a80000    # 21.0f

    const/high16 v11, 0x41f00000    # 30.0f

    .line 252
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 255
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 256
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 257
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    sget v4, Lorg/telegram/messenger/R$string;->MigrateOldFolderDescription:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    const/high16 v8, 0x41a80000    # 21.0f

    const/high16 v9, 0x41700000    # 15.0f

    .line 259
    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x42080000    # 34.0f

    .line 263
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v5, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    .line 264
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 265
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 266
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 267
    sget v4, Lorg/telegram/messenger/R$string;->MigrateOldFolderButton:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v2, v2, [F

    const/high16 v5, 0x40c00000    # 6.0f

    aput v5, v2, v1

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRectByKey(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41800000    # 16.0f

    const/4 v4, -0x1

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x41700000    # 15.0f

    .line 272
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    new-instance v1, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 280
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->migrateOldFolder()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 319
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    .line 320
    sput-object v0, Lorg/telegram/messenger/FilesMigrationService;->filesMigrationBottomSheet:Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;

    return-void
.end method

.method public migrateOldFolder()V
    .locals 12

    .line 284
    iget-object v0, p0, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 285
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 286
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v7, "android.permission.READ_MEDIA_AUDIO"

    const-string v8, "android.permission.READ_MEDIA_VIDEO"

    const-string v9, "android.permission.READ_MEDIA_IMAGES"

    const/16 v10, 0x21

    if-lt v5, v10, :cond_1

    .line 288
    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 289
    invoke-virtual {v0, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    .line 290
    invoke-virtual {v0, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    if-ge v5, v10, :cond_3

    .line 292
    invoke-virtual {v0, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v3, :cond_5

    if-nez v2, :cond_4

    goto :goto_1

    .line 313
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FilesMigrationService;->start()V

    .line 314
    invoke-virtual {p0}, Lorg/telegram/messenger/FilesMigrationService$FilesMigrationBottomSheet;->dismiss()V

    return-void

    .line 296
    :cond_5
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v3, :cond_7

    if-lt v5, v10, :cond_6

    .line 299
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    :cond_6
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 307
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 310
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setLastVisible(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet$-CC;->$default$setLastVisible(Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;Z)V

    return-void
.end method
