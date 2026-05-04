.class Lorg/telegram/ui/Stories/LiveCommentsView$6;
.super Lorg/telegram/ui/Stories/DarkThemeResourceProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/LiveCommentsView;->openStarsSheet(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/LiveCommentsView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/LiveCommentsView;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lorg/telegram/ui/Stories/LiveCommentsView$6;->this$0:Lorg/telegram/ui/Stories/LiveCommentsView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public appendColors()V
    .locals 3

    .line 895
    iget-object v0, p0, Lorg/telegram/ui/Stories/DarkThemeResourceProvider;->sparseIntArray:Landroid/util/SparseIntArray;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const v2, 0x14ffffff

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
