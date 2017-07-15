.class public abstract Lcom/integralads/avid/library/inmobi/session/internal/e;
.super Lcom/integralads/avid/library/inmobi/session/internal/a;
.source "InternalAvidHtmlAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/inmobi/session/internal/a",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/inmobi/session/internal/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected q()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->q()V

    .line 23
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/e;->s()V

    .line 24
    return-void
.end method

.method protected r()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->r()V

    .line 29
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/e;->s()V

    .line 30
    return-void
.end method

.method public u()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/e;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method
