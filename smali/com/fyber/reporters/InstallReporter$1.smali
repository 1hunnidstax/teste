.class final Lcom/fyber/reporters/InstallReporter$1;
.super Lcom/fyber/reporters/a/c;
.source "InstallReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/reporters/InstallReporter;->e()Lcom/fyber/reporters/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/reporters/InstallReporter;


# direct methods
.method constructor <init>(Lcom/fyber/reporters/InstallReporter;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/fyber/reporters/InstallReporter$1;->a:Lcom/fyber/reporters/InstallReporter;

    invoke-direct {p0}, Lcom/fyber/reporters/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fyber/reporters/InstallReporter$1;->a:Lcom/fyber/reporters/InstallReporter;

    iget-object v0, v0, Lcom/fyber/reporters/InstallReporter;->a:Lcom/fyber/reporters/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/a/a;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "InstallReporter"

    return-object v0
.end method
