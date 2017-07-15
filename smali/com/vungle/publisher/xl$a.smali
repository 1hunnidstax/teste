.class public final Lcom/vungle/publisher/xl$a;
.super Lcom/vungle/publisher/vs$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/xl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/vs$a",
        "<",
        "Lcom/vungle/publisher/xl;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vungle/publisher/vs$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/vungle/publisher/xl;

    invoke-direct {v0}, Lcom/vungle/publisher/xl;-><init>()V

    return-object v0
.end method
