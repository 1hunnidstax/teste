.class public final Lcom/vungle/publisher/aar;
.super Lcom/vungle/publisher/vo;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/py;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/vo;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/vo;->a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    .line 29
    iget-object v0, p0, Lcom/vungle/publisher/aar;->a:Lcom/vungle/publisher/py;

    iget-object v0, v0, Lcom/vungle/publisher/py;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsVgAppInstalled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    return-void
.end method
