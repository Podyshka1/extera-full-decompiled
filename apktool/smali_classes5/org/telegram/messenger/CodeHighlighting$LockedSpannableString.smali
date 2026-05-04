.class public Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;
.super Landroid/text/SpannableString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockedSpannableString"
.end annotation


# instance fields
.field private ready:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;->ready:Z

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    .line 170
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;->ready:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    .line 158
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;->ready:Z

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 159
    :cond_0
    invoke-super {p0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 146
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;->ready:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p3, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1

    .line 147
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1

    .line 152
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;->ready:Z

    if-nez v0, :cond_0

    return p2

    .line 153
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    return p1
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$LockedSpannableString;->ready:Z

    return-void
.end method
