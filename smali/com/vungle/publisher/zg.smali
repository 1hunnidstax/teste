.class public final Lcom/vungle/publisher/zg;
.super Lcom/vungle/publisher/yf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/zg$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field e:Z


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/yf;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/vs$c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/vungle/publisher/vs$c;->c:Lcom/vungle/publisher/vs$c;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/vs$b;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/vungle/publisher/vs$b;->a:Lcom/vungle/publisher/vs$b;

    return-object v0
.end method
