.class public abstract Lcom/vungle/publisher/mt;
.super Landroid/webkit/WebView;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/mt$b;,
        Lcom/vungle/publisher/mt$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/ql;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
