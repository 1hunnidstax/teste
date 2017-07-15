.class public abstract Lcom/integralads/avid/library/inmobi/session/internal/f;
.super Lcom/integralads/avid/library/inmobi/session/internal/a;
.source "InternalAvidManagedAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/inmobi/session/internal/a",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/inmobi/session/internal/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 15
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/f;->a:Landroid/webkit/WebView;

    .line 16
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public k()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->k()V

    .line 27
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/f;->s()V

    .line 28
    return-void
.end method

.method public u()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/f;->a:Landroid/webkit/WebView;

    return-object v0
.end method
