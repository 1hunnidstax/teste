.class final Lcom/inmobi/ads/NativeStrandViewFactory$b;
.super Landroid/widget/TextView;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1158
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1159
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 1174
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandViewFactory$b;->getLineHeight()I

    move-result v0

    div-int v0, p2, v0

    .line 1177
    if-lez v0, :cond_0

    .line 1178
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandViewFactory$b;->setLines(I)V

    .line 1180
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1181
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandViewFactory$b;->setSingleLine()V

    .line 1184
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1166
    const/4 v0, 0x0

    return v0
.end method
