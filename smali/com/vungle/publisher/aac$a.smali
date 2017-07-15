.class public final Lcom/vungle/publisher/aac$a;
.super Lcom/vungle/publisher/yf$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/yf$a",
        "<",
        "Lcom/vungle/publisher/aac;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/aei$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vungle/publisher/yf$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(JJ)Lcom/vungle/publisher/aac;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/vungle/publisher/aac$a;->a()Lcom/vungle/publisher/yf;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aac;

    .line 49
    iget-object v1, v0, Lcom/vungle/publisher/vs;->c:Landroid/os/Bundle;

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/aac$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sessionEnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lcom/vungle/publisher/aac$a;->g:Lcom/vungle/publisher/aei$a;

    iget-object v1, v1, Lcom/vungle/publisher/aei$a;->a:Lcom/vungle/publisher/ael$a;

    invoke-virtual {v1, p1, p2}, Lcom/vungle/publisher/ael$a;->a(J)Lcom/vungle/publisher/ael;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/aei;

    invoke-direct {v2}, Lcom/vungle/publisher/aei;-><init>()V

    iput-object v1, v2, Lcom/vungle/publisher/aei;->b:Lcom/vungle/publisher/ael;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lcom/vungle/publisher/aei;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/vungle/publisher/aei;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->d:Ljava/lang/String;

    .line 52
    return-object v0
.end method

.method protected final synthetic b()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vungle/publisher/aac;

    invoke-direct {v0}, Lcom/vungle/publisher/aac;-><init>()V

    return-object v0
.end method
