.class final Lcom/vungle/publisher/aew$a$a;
.super Lcom/vungle/publisher/acb$b$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aew$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/acb$b$a",
        "<",
        "Lcom/vungle/publisher/ko;",
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
    .line 35
    invoke-direct {p0}, Lcom/vungle/publisher/acb$b$a;-><init>()V

    return-void
.end method
