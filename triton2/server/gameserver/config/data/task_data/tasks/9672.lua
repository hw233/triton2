task = {
  id = 9672,    --����ID
  kind = 0,    --��������
  color = 0,    --������ɫ
  name = "#td_9672_name",  
  desc = "#td_9672_desc",  
  dest = "#td_9672_dest",  
  section = "#td_9672_section",  
  give_npc = 52341,    --����NPC
  give_map_id = 42,    --����NPC���ڵĵ�ͼID
  recv_npc = 52341,    --����NPC
  recv_map_id = 42,    --����NPC���ڵĵ�ͼID
  hard = 0,    --�����Ѷ�
  timer = 3600,    --����ʱ��(��)
  cancelable = 1,    --�����ܷ񱻷���
  repeatable = 1,    --����ɹ���ɷ�����
  retryable = 1,    --����ʧ�ܺ�ɷ�����
  fail_on_killed = 0,    --��ұ�ɱ�����Ƿ���Ϊ����ʧ��
  after_task = 0,    --��������(�Զ�����)
  direct_complete = 0,    --�����Ƿ�ֱ�����(������NPC��)
  get_metier_task = 0,    --�Ƿ���ְ����
  task_level = 0,    --������Ӧ��ҵȼ�
  send_npc_id = 0,    --Ҫ���͵�NPC
  max_gird = 0,    --����뻤��NPC����������
  is_open_npc = 0,    --�Ƿ��ڽ�����ʱ���ֺ�NPC����(����������)
  is_fetch = 0,    --�Ƿ�������(Ĭ�Ϸ�)
  task_type = 1024,    --��������
  task_hard = 7,    --�������ͼ��Ѷ�
  trace={ 
	"#td_9672_trace1",
  }; 
  max_send_time = 0,    --����뿪����NPC���ʱ��(��)
  offline_fail = 0,    --�Ƿ�������������ʧ��
  group_id = 1048577,    --���������
  is_fail_auto_abort = 0,    --�Ƿ�ʧ��ʱ�Զ�����
  is_share_complete = 0,    --ͬ������Ƿ��������ɹ�
  task_map_id = 0,    --���������ĵ�ͼID
  can_invite = 0,    --�Ƿ��������
  timeout_action = 1,    --��ʱ����ʱ�������״̬
  time_lmt_type = 0,    --��ʱ��������
  is_redirect_fail = 0,    --�Ƿ���ͼ����ʧ��
  is_day_clear = 0,    --�Ƿ�ÿ�������ɼ�¼
  give_camp = 0,    --����NPC��Ӫ
  recv_camp = 0,    --����NPC��Ӫ
  is_day_fail = 0,    --�Ƿ����ʧ��
  loop_type = 0,    --����������
  team_member_lmt = 0,    --Ҫ���������
  finish_delay_time = 0,    --�����Ҫ����ò��ܽ������룩
  refresh_award_able = 0,    --�����Ƿ����ˢ�½���
  task_reaccept_time = 0,    --������ɺ��ÿ����ٽ���ͬ�����룩
  publish_type = 0,    --������������
  give_items = {};   --���ŵ���
  --����NPC·��
  npc_waypoints = {};
  drop_items = {};   --�������
  --����������
  accept_cond = 
  {
	{func=check_npc_state, args={npc_id = 55329}},
	{func=check_time_part, args={start_hour = 18,start_minu = 0,end_hour = 22,end_minu = 0}},
	{func=check_is_corps_member, args={nouse = 0}},
	{func=check_today_completedbygroup, args={group_id = 1048577,max_times = 1}},
	{func=check_level, args={min_level = 40,max_level = 0}},
  };
  --������������
  publish_cond = 
  {
  };
  --������ʾ����
  show_cond = 
  {
	{func=check_is_corps_member, args={nouse = 0}},
	{func=check_level, args={min_level = 40,max_level = 0}},
  };
  --�������
  complete_cond = 
  {
	{func=check_protect_flag, args={npc_id = 55329}},
  };
  --������ɽ���
  awards = 
  {
	{func=award_expr_by_level_table, args={expr = 0}},
	{func=award_money_by_level_table, args={expr = 0}},
	{func=award_items, args={id = 75961,n = 1,is_free = 0}},
	{func=award_combat_fame, args={value = 50}},
};
  --����������
  accept_awards = 
  {
};
  --�Ի�
  dialog =   {
  --������Ի�
	[1] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_9672_dialog_accept_npctalk_1",
	buttons = {
        { player_talk = "#td_9672_dialog_accept_player_talk_1_1" ,dest_type = 1 ,dest_window_id = 4 ,func_code = 0},

	  }
	},
	[4] = {
	parent_id = 1,
	window_type = 3,
	npc_talk ="#td_9672_dialog_accept_npctalk_4",
	buttons = {

	  }
	},
  --������жԻ�
	[2] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_9672_dialog_doing_npctalk_2",
	buttons = {

  }
},
  --�������Ի�
	[3] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_9672_dialog_end_npctalk_3",
	buttons = {
        { player_talk = "#td_9672_dialog_end_player_talk_3_1" ,dest_type = 1 ,dest_window_id = 5 ,func_code = 0},

  }
},
	[5] = {
	parent_id = 3,
	window_type = 2,
	npc_talk ="#td_9672_dialog_end_npctalk_5",
	buttons = {

  }
},
};
  --�Ի�NPC
  dialog_with_npc = {
};
}