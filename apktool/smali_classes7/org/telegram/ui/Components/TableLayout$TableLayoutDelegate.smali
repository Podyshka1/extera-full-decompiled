.class public interface abstract Lorg/telegram/ui/Components/TableLayout$TableLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TableLayoutDelegate"
.end annotation


# virtual methods
.method public abstract createTextLayout(Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;I)Lorg/telegram/ui/ArticleViewer$DrawingText;
.end method

.method public abstract getHeaderPaint()Landroid/graphics/Paint;
.end method

.method public abstract getLinePaint()Landroid/graphics/Paint;
.end method

.method public abstract getStripPaint()Landroid/graphics/Paint;
.end method

.method public abstract onLayoutChild(Lorg/telegram/ui/ArticleViewer$DrawingText;II)V
.end method
