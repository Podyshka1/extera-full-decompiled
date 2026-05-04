.class public Lorg/telegram/ui/Components/UItem;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UItem$UItemFactory;
    }
.end annotation


# static fields
.field private static factories:Landroid/util/LongSparseArray; = null

.field private static factoryInstances:Ljava/util/HashMap; = null

.field private static factoryViewType:I = 0x2710

.field public static factoryViewTypeStartsWith:I = 0x2710


# instance fields
.field public accent:Z

.field public animatedText:Ljava/lang/CharSequence;

.field public bind:Lorg/telegram/messenger/Utilities$Callback;

.field public chatType:Ljava/lang/String;

.field public checkBoxIconResId:I

.field public checked:Z

.field public clickCallback:Landroid/view/View$OnClickListener;

.field public clickCallback2:Landroid/view/View$OnClickListener;

.field public collapsed:Z

.field public dialogId:J

.field public drawLine:Z

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public enabled:Z

.field public exteraExpandableSwitch:Z

.field public flags:I

.field public floatValue:F

.field public hideDivider:Z

.field public iconColor:Ljava/lang/Integer;

.field public iconResId:I

.field public id:I

.field public include:Z

.field public intCallback:Lorg/telegram/messenger/Utilities$Callback;

.field public intValue:I

.field public locked:Z

.field public longValue:J

.field public multiline:Z

.field public object:Ljava/lang/Object;

.field public object2:Ljava/lang/Object;

.field public pad:I

.field public parentSpanCount:I

.field public prioritizeTitleOverValue:Z

.field public red:Z

.field public reordering:Z

.field public settingItem:Lcom/exteragram/messenger/plugins/models/SettingItem;

.field public spanCount:I

.field public subtext:Ljava/lang/CharSequence;

.field public switchClickCallback:Landroid/view/View$OnClickListener;

.field public text:Ljava/lang/CharSequence;

.field public textValue:Ljava/lang/CharSequence;

.field public texts:[Ljava/lang/String;

.field public transparent:Z

.field public view:Landroid/view/View;

.field public withUsername:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetfactories()Landroid/util/LongSparseArray;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfactoryInstances()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetfactoryViewType()I
    .locals 1

    .line 0
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewType:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputfactories(Landroid/util/LongSparseArray;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfactoryInstances(Ljava/util/HashMap;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputfactoryViewType(I)V
    .locals 0

    .line 0
    sput p0, Lorg/telegram/ui/Components/UItem;->factoryViewType:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;-><init>(IZ)V

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->enabled:Z

    const/4 p2, -0x1

    .line 50
    iput p2, p0, Lorg/telegram/ui/Components/UItem;->spanCount:I

    .line 72
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->drawLine:Z

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    return-void
.end method

.method public static asAddChat(Ljava/lang/Long;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 397
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 398
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    return-object v0
.end method

.method public static asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 160
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 161
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 162
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asBlackHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 173
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 174
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asBusinessChatLink(Lorg/telegram/ui/Business/BusinessLinksActivity$BusinessLinkWrapper;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 453
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 454
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asButton(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 209
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 210
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 211
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 212
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 233
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 234
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 235
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 236
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 237
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 217
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 218
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 219
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 220
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 202
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 203
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 204
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 225
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 226
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 227
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 228
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButtonCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 328
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 329
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 330
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 331
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asButtonWithSubtext(IILjava/lang/CharSequence;Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 242
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 243
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 244
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 245
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 246
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    .line 247
    iput p4, v0, Lorg/telegram/ui/Components/UItem;->pad:I

    .line 248
    iput p5, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asCenterShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 361
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 362
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    .line 363
    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object v0
.end method

.method public static asChart(IILorg/telegram/ui/StatisticActivity$ChartViewData;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 459
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    add-int/lit8 p0, p0, 0x12

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 460
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 461
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 281
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 282
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 283
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asCheck(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 288
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 289
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 290
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 291
    iput p2, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    return-object v0
.end method

.method public static asCheck(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 296
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 297
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 298
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 299
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    .line 300
    iput-boolean p3, v0, Lorg/telegram/ui/Components/UItem;->multiline:Z

    return-object v0
.end method

.method public static asCustom(ILandroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 97
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 98
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 99
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    .line 100
    iput v2, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 104
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 105
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    .line 106
    iput v2, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asCustomShadow(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 110
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 111
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    const/4 p0, -0x1

    .line 112
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asCustomShadow(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 122
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 123
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    .line 124
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 549
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 550
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 551
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 552
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asExteraExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 557
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 558
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 559
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 560
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    .line 561
    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->exteraExpandableSwitch:Z

    .line 562
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->switchClickCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static asFilterChat(ZJ)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 381
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 382
    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->include:Z

    .line 383
    iput-wide p1, v0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    return-object v0
.end method

.method public static asFilterChat(ZLjava/lang/CharSequence;Ljava/lang/String;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 388
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 389
    iput-boolean p0, v0, Lorg/telegram/ui/Components/UItem;->include:Z

    .line 390
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 391
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->chatType:Ljava/lang/String;

    .line 392
    iput p3, v0, Lorg/telegram/ui/Components/UItem;->flags:I

    return-object v0
.end method

.method public static asFlicker(I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 606
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 607
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asFlicker(II)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 612
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 613
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 614
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asFullscreenCustom(Landroid/view/View;I)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/UItem;->asFullscreenCustom(Landroid/view/View;IZ)Lorg/telegram/ui/Components/UItem;

    move-result-object p0

    return-object p0
.end method

.method public static asFullscreenCustom(Landroid/view/View;IZ)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 139
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 140
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    .line 141
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 142
    iput p2, v0, Lorg/telegram/ui/Components/UItem;->flags:I

    return-object v0
.end method

.method public static asFullyCustom(Landroid/view/View;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 129
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 130
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public static asGraySection(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 567
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 568
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asGraySection(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 573
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 574
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 575
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    .line 576
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static asHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 153
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 154
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 155
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 147
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 148
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asIntSlideView(IIIILorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 427
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 428
    iput p2, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 429
    iput-object p5, v0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    .line 430
    invoke-static {p0, p1, p3, p4}, Lorg/telegram/ui/Cells/SlideIntChooseView$Options;->make(IIILorg/telegram/messenger/Utilities$CallbackReturn;)Lorg/telegram/ui/Cells/SlideIntChooseView$Options;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    const-wide/16 p0, -0x1

    .line 431
    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object v0
.end method

.method public static asLargeQuickReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 447
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 448
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asLargeShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 355
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 356
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asProceedOverview(Lorg/telegram/ui/ChannelMonetizationLayout$ProceedOverview;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 368
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 369
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asProfileCell(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 581
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 582
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asQuickReply(Lorg/telegram/ui/Business/QuickRepliesController$QuickReply;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 441
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 442
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asRadio(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 305
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 306
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 307
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRadio(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 312
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 313
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 314
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 315
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRadioButton(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 320
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 321
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 322
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 323
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRippleCheck(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 268
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 269
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 270
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 505
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 506
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 507
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asRoundGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 512
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 513
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 514
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 515
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSearchMessage(ILorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 599
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 600
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 601
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSearchMessage(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 593
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 594
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSettingsCell(IILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 619
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 620
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 621
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 622
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSettingsCell(IILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 635
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 636
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 637
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    .line 638
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 639
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSettingsCell(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 627
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 628
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 629
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 630
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asShadow()Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 345
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    return-object v0
.end method

.method public static asShadow(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 374
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 375
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 376
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 349
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 350
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asShadowCollapseButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 535
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 536
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 537
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asSlideView(I[Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 412
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 413
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 414
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->texts:[Ljava/lang/String;

    .line 415
    iput p2, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 416
    iput-object p3, v0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    const-wide/16 p0, -0x1

    .line 417
    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object v0
.end method

.method public static asSlideView([Ljava/lang/String;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 403
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 404
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->texts:[Ljava/lang/String;

    .line 405
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    .line 406
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->intCallback:Lorg/telegram/messenger/Utilities$Callback;

    const-wide/16 p0, -0x1

    .line 407
    iput-wide p0, v0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object v0
.end method

.method public static asSpace(I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 478
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 479
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asSpace(II)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 484
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 485
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 486
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method

.method public static asStickerButton(ILjava/lang/CharSequence;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 260
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 261
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 262
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 263
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asStickerButton(ILjava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 253
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 254
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 255
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 256
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 542
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x27

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 543
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 544
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asTopView(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 187
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 188
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 189
    iput p1, v0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    return-object v0
.end method

.method public static asTopView(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 179
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 180
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 181
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    .line 182
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static asUserCheckbox(ILorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 528
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 529
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 530
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public static asUserGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 520
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    .line 521
    iput p0, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 522
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 523
    iput-object p2, v0, Lorg/telegram/ui/Components/UItem;->animatedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;
    .locals 3

    .line 954
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-long v1, p0

    .line 955
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/Components/UItem$UItemFactory;

    return-object p0
.end method

.method public static getFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem$UItemFactory;
    .locals 3

    .line 964
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    .line 965
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/UItem;->factories:Landroid/util/LongSparseArray;

    .line 966
    :cond_1
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/UItem$UItemFactory;

    if-eqz v0, :cond_2

    return-object v0

    .line 967
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UItemFactory was not setuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;
    .locals 2

    .line 959
    new-instance v0, Lorg/telegram/ui/Components/UItem;

    invoke-static {p0}, Lorg/telegram/ui/Components/UItem;->getFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object p0

    iget p0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UItem;-><init>(IZ)V

    return-object v0
.end method


# virtual methods
.method public accent()Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    .line 707
    iput-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->accent:Z

    return-object p0
.end method

.method protected contentsEquals(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 830
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 831
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/UItem;

    .line 832
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x1f

    if-ne v2, v3, :cond_4

    .line 835
    iget-object v2, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    const/16 v3, 0x1c

    if-ne v2, v3, :cond_6

    .line 838
    iget v2, p0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    const/16 v3, 0x23

    if-eq v2, v3, :cond_9

    const/16 v3, 0x25

    if-ne v2, v3, :cond_7

    goto :goto_0

    .line 844
    :cond_7
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v2, v0, :cond_8

    .line 845
    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 847
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    .line 850
    :cond_8
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UItem;->itemContentEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    .line 842
    :cond_9
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget v3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v3, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/Components/UItem;->checked:Z

    iget-boolean p1, p1, Lorg/telegram/ui/Components/UItem;->checked:Z

    if-ne v2, p1, :cond_a

    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 800
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 801
    :cond_1
    check-cast p1, Lorg/telegram/ui/Components/UItem;

    .line 802
    iget v2, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget v3, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/16 v3, 0x24

    if-eq v2, v3, :cond_9

    const/16 v3, 0x23

    if-eq v2, v3, :cond_9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x1c

    if-ne v2, v3, :cond_5

    .line 810
    iget v2, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, p1, :cond_4

    return v0

    :cond_4
    return v1

    .line 812
    :cond_5
    iget-object v0, p1, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    instance-of v1, v0, Lcom/exteragram/messenger/preferences/components/CustomPreferenceCell;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/exteragram/messenger/preferences/components/CustomPreferenceCell;

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/exteragram/messenger/preferences/components/CustomPreferenceCell;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    const/16 v0, 0x1f

    if-ne v2, v0, :cond_7

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 818
    :cond_7
    sget v0, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    if-lt v2, v0, :cond_8

    .line 819
    invoke-static {v2}, Lorg/telegram/ui/Components/UItem;->findFactory(I)Lorg/telegram/ui/Components/UItem$UItemFactory;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 821
    invoke-virtual {v0, p0, p1}, Lorg/telegram/ui/Components/UItem$UItemFactory;->equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    .line 824
    :cond_8
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UItem;->itemEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1

    .line 807
    :cond_9
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, p1, :cond_a

    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public instanceOf(Ljava/lang/Class;)Z
    .locals 3

    .line 790
    iget v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    sget v1, Lorg/telegram/ui/Components/UItem;->factoryViewTypeStartsWith:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 791
    :cond_0
    sget-object v0, Lorg/telegram/ui/Components/UItem;->factoryInstances:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return v2

    .line 792
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/UItem$UItemFactory;

    if-nez p1, :cond_2

    return v2

    .line 794
    :cond_2
    iget p1, p1, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    iget v0, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method public itemContentEquals(Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    .line 879
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->contentsEquals(Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;)Z

    move-result p1

    return p1
.end method

.method public itemEquals(Lorg/telegram/ui/Components/UItem;)Z
    .locals 4

    .line 854
    iget v0, p0, Lorg/telegram/ui/Components/UItem;->id:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->pad:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->pad:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/UItem;->dialogId:J

    iget-wide v2, p1, Lorg/telegram/ui/Components/UItem;->dialogId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->iconResId:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->transparent:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->red:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->red:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->locked:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->accent:Z

    iget-boolean v1, p1, Lorg/telegram/ui/Components/UItem;->accent:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->text:Ljava/lang/CharSequence;

    .line 865
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->subtext:Ljava/lang/CharSequence;

    .line 866
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    .line 867
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->view:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/UItem;->floatValue:F

    iget v1, p1, Lorg/telegram/ui/Components/UItem;->floatValue:F

    sub-float/2addr v0, v1

    .line 870
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/ui/Components/UItem;->longValue:J

    iget-wide v2, p1, Lorg/telegram/ui/Components/UItem;->longValue:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->drawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    iget-object v1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 873
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 874
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBind(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 785
    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->bind:Lorg/telegram/messenger/Utilities$Callback;

    return-object p0
.end method

.method public pad()Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    .line 682
    iput v0, p0, Lorg/telegram/ui/Components/UItem;->pad:I

    return-object p0
.end method

.method public prioritizeTitleOverValue(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 780
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->prioritizeTitleOverValue:Z

    return-object p0
.end method

.method public red()Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    .line 702
    iput-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->red:Z

    return-object p0
.end method

.method public setCheckBoxIcon(I)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 727
    iput p1, p0, Lorg/telegram/ui/Components/UItem;->checkBoxIconResId:I

    return-object p0
.end method

.method public setChecked(Z)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 664
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->checked:Z

    .line 665
    iget p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc

    .line 666
    iput p1, p0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    :cond_0
    return-object p0
.end method

.method public setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 654
    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setClickCallback2(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->clickCallback2:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setCloseIcon(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 649
    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->clickCallback:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setCollapsed(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 672
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->collapsed:Z

    return-object p0
.end method

.method public setColorfulIcon(II)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 774
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/UItem;->setIcon(I)Lorg/telegram/ui/Components/UItem;

    .line 775
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->iconColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEnabled(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 687
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->enabled:Z

    return-object p0
.end method

.method public setIcon(I)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 769
    iput p1, p0, Lorg/telegram/ui/Components/UItem;->iconResId:I

    return-object p0
.end method

.method public setLinkAlias(Ljava/lang/String;Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 743
    invoke-static {p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->isValidForLinkAliases(Lorg/telegram/ui/Components/UItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getInstance()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->addLinkAliasForOption(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)V

    :cond_0
    return-object p0
.end method

.method public setLocked(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 692
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->locked:Z

    return-object p0
.end method

.method public setMinSliderValue(I)Lorg/telegram/ui/Components/UItem;
    .locals 2

    int-to-long v0, p1

    .line 436
    iput-wide v0, p0, Lorg/telegram/ui/Components/UItem;->longValue:J

    return-object p0
.end method

.method public setMultiline(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 754
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->multiline:Z

    return-object p0
.end method

.method public setPad(I)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 677
    iput p1, p0, Lorg/telegram/ui/Components/UItem;->pad:I

    return-object p0
.end method

.method public setReordering(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 717
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->reordering:Z

    return-object p0
.end method

.method public setSearchable(Lcom/exteragram/messenger/preferences/BasePreferencesActivity;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    .line 737
    invoke-static {p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->isValidForSearch(Lorg/telegram/ui/Components/UItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->getInstance()Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/exteragram/messenger/preferences/utils/SettingsRegistry;->addSearchEntry(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/UItem;)V

    :cond_0
    return-object p0
.end method

.method public setSpanCount(I)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 712
    iput p1, p0, Lorg/telegram/ui/Components/UItem;->spanCount:I

    return-object p0
.end method

.method public setTransparent(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 722
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->transparent:Z

    return-object p0
.end method

.method public setValue(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->textValue:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public showDivider(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 732
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->hideDivider:Z

    return-object p0
.end method

.method public withOpenButton(Lorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/UItem;
    .locals 1

    const/4 v0, 0x1

    .line 587
    iput-boolean v0, p0, Lorg/telegram/ui/Components/UItem;->locked:Z

    .line 588
    iput-object p1, p0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    return-object p0
.end method

.method public withUsername(Z)Lorg/telegram/ui/Components/UItem;
    .locals 0

    .line 644
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UItem;->withUsername:Z

    return-object p0
.end method
