.class public Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field public alpha:F

.field public from:F

.field public to:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 3836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3837
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->from:F

    .line 3838
    iput p2, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->to:F

    .line 3839
    iput p3, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsDrawer$Section;->alpha:F

    return-void
.end method
