.class public Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyItem"
.end annotation


# instance fields
.field allowCloseAnimation:Ljava/lang/Boolean;

.field alpha:F

.field backgroundColor:I

.field cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field contentDescription:Ljava/lang/CharSequence;

.field drawable:Landroid/graphics/drawable/Drawable;

.field icon:I

.field id:I

.field isSearchField:Ljava/lang/Boolean;

.field onViews:Ljava/util/ArrayList;

.field overrideMenuClick:Ljava/lang/Boolean;

.field parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field searchFieldHint:Ljava/lang/CharSequence;

.field searchListener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

.field tag:Ljava/lang/Object;

.field text:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;

.field visibility:I

.field width:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenu;IILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 181
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->alpha:F

    const/16 v0, 0x8

    .line 200
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->visibility:I

    .line 189
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 190
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->id:I

    .line 191
    iput p3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->icon:I

    .line 192
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->text:Ljava/lang/CharSequence;

    .line 193
    iput p5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->backgroundColor:I

    .line 194
    iput-object p6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 195
    iput p7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->width:I

    .line 196
    iput-object p8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->title:Ljava/lang/CharSequence;

    .line 197
    iput-object p9, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public add()V
    .locals 14

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 293
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->-$$Nest$fgetids(Lorg/telegram/ui/ActionBar/ActionBarMenu;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->-$$Nest$fgetids(Lorg/telegram/ui/ActionBar/ActionBarMenu;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move v3, v2

    .line 295
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 296
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 297
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 298
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 299
    check-cast v4, Ljava/lang/Integer;

    .line 300
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->-$$Nest$fgetids(Lorg/telegram/ui/ActionBar/ActionBarMenu;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v4, v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v5, v0

    .line 308
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->parent:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->id:I

    iget v7, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->icon:I

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->text:Ljava/lang/CharSequence;

    iget v9, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->backgroundColor:I

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->drawable:Landroid/graphics/drawable/Drawable;

    iget v11, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->width:I

    iget-object v12, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->title:Ljava/lang/CharSequence;

    iget-object v13, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemAt(IIILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 309
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 313
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->allowCloseAnimation:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 314
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 316
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->overrideMenuClick:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 317
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOverrideMenuClick(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 319
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->isSearchField:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 322
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->searchListener:Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;

    if-eqz v0, :cond_7

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 325
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->searchFieldHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 328
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->alpha:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->onViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/messenger/Utilities$Callback;

    .line 332
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-interface {v3, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->onViews:Ljava/util/ArrayList;

    :cond_a
    :goto_3
    return-void
.end method

.method public createView()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->add()V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 217
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->visibility:I

    return v0
.end method

.method public onView(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 339
    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->onViews:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->onViews:Ljava/util/ArrayList;

    .line 343
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->onViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAllowCloseAnimation(Z)V
    .locals 1

    .line 253
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->allowCloseAnimation:Ljava/lang/Boolean;

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAllowCloseAnimation(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 281
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->alpha:F

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 239
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->contentDescription:Ljava/lang/CharSequence;

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOverrideMenuClick(Z)V
    .locals 1

    .line 246
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->overrideMenuClick:Ljava/lang/Boolean;

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOverrideMenuClick(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 205
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->visibility:I

    if-eq v0, p1, :cond_1

    .line 206
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->visibility:I

    if-nez p1, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->add()V

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->cell:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
