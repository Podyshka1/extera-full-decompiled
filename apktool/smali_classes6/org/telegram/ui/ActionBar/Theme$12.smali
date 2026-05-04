.class Lorg/telegram/ui/ActionBar/Theme$12;
.super Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->createThemePreviewImage(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$colors:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(IZZLandroid/util/SparseIntArray;)V
    .locals 0

    .line 8010
    iput-object p4, p0, Lorg/telegram/ui/ActionBar/Theme$12;->val$colors:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZ)V

    return-void
.end method


# virtual methods
.method protected getColor(I)I
    .locals 1

    .line 8013
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$12;->val$colors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 8015
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$12;->val$colors:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 8017
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->-$$Nest$sfgetdefaultColors()[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method protected getCurrentColor(I)I
    .locals 1

    .line 8023
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/Theme$12;->val$colors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method
