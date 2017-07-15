.class Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;
.super Ljava/lang/Object;
.source "InMobiMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$configs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$LogLevel;->DEBUG:Lcom/inmobi/sdk/InMobiSdk$LogLevel;

    invoke-static {v0}, Lcom/inmobi/sdk/InMobiSdk;->setLogLevel(Lcom/inmobi/sdk/InMobiSdk$LogLevel;)V

    .line 68
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$accountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->initIntAdapter(Ljava/util/Map;Landroid/app/Activity;)V
    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Ljava/util/Map;Landroid/app/Activity;)V

    .line 72
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->initRvAdapter(Ljava/util/Map;Landroid/app/Activity;)V
    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Ljava/util/Map;Landroid/app/Activity;)V

    .line 74
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->this$0:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$configs:Ljava/util/Map;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;->val$activity:Landroid/app/Activity;

    # invokes: Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->initBanAdapter(Ljava/util/Map;Landroid/app/Activity;)V
    invoke-static {v0, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->access$200(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Ljava/util/Map;Landroid/app/Activity;)V

    .line 75
    return-void
.end method
