# preliminaries #

connection: "snowflake_salesforce"

include: "*.view"

include: "*.dashboard"

# views to explore——i.e., "base views" #

explore: account {
  sql_always_where: NOT ${account.is_deleted}
    ;;
  fields: [ALL_FIELDS*, -account_owner.opportunity_set*, -creator.opportunity_set*]

  join: contact {
    sql_on: ${account.id} = ${contact.account_id} ;;
    relationship: one_to_many
  }

  join: creator {
    from: user
    sql_on: ${contact.created_by_id} = ${creator.id} ;;
    relationship: many_to_one
  }

  join: account_owner {
    from: user
    sql_on: ${account.owner_id} = ${account_owner.id} ;;
    relationship: many_to_one
  }

  join: account_owner_role {
    from: user_role
    sql_on: ${account_owner_role.id} = ${account_owner.user_role_id} ;;
    relationship: one_to_one
  }

  join: account_usage {
    from: account_usage
    sql_on: ${account.id} = ${account_usage.id} ;;
    relationship: one_to_one
  }

  join: case {
    from: case
    sql_on: ${account.id} = ${case.account_id} ;;
    relationship: one_to_many
  }

  join: account_history {
    sql_on: ${account.id} = ${account_history.account_id} ;;
    relationship: one_to_many
  }

  join: opportunity {
    sql_on: ${opportunity.account_id} = ${account.id} ;;
    relationship: many_to_one
  }
}

explore: case {
  sql_always_where: NOT ${case.is_deleted}
    ;;
}

explore: lead {
  sql_always_where: NOT ${lead.is_deleted}
    ;;

  join: lead_owner {
    from: user
    sql_on: ${lead.owner_id} = ${lead_owner.id} ;;
    relationship: many_to_one
  }

  join: account {
    sql_on: ${lead.converted_account_id} = ${account.id} ;;
    relationship: many_to_one
  }

  join: account_owner {
    from: user
    sql_on: ${account.owner_id} = ${account_owner.id} ;;
    relationship: many_to_one
  }

  join: contact {
    sql_on: ${lead.converted_contact_id} = ${contact.id} ;;
    relationship: many_to_one
  }

  join: opportunity {
    sql_on: ${lead.converted_opportunity_id} = ${opportunity.id} ;;
    relationship: many_to_one
  }

  join: opportunity_owner {
    from: user
    sql_on: ${opportunity.owner_id} = ${opportunity_owner.id} ;;
    relationship: many_to_one
  }
}

explore: opportunity {
  sql_always_where: NOT ${opportunity.is_deleted}
    ;;

  join: account {
    sql_on: ${opportunity.account_id} = ${account.id} ;;
    relationship: many_to_one
  }

  join: account_owner {
    from: user
    sql_on: ${account.owner_id} = ${account_owner.id} ;;
    relationship: many_to_one
  }

  join: campaign {
    sql_on: ${opportunity.campaign_id} = ${campaign.id} ;;
    relationship: many_to_one
  }

  join: opportunity_owner {
    from: user
    sql_on: ${opportunity.owner_id} = ${opportunity_owner.id} ;;
    relationship: many_to_one
  }

  join: opportunity_owner_role {
    from: user_role
    sql_on: ${opportunity_owner_role.id} = ${opportunity_owner.user_role_id} ;;
    relationship: one_to_one
  }

  join: opportunity_line_item {
    sql_on: ${opportunity.id} = ${opportunity_line_item.opportunity_id} AND NOT ${opportunity_line_item.is_deleted} ;;
    relationship: one_to_many
  }

  join: opportunity_history {
    sql_on: ${opportunity.id} = ${opportunity_history.opportunity_id} ;;
    relationship: one_to_many
  }
}

explore: contact {
  sql_always_where: NOT ${contact.is_deleted}
    ;;

  join: account {
    sql_on: ${contact.account_id} = ${account.id} ;;
    relationship: many_to_one
  }
}

explore: tpcustomers {

  join: tpadmins {
    sql_on: ${tpadmins.akey} = ${tpcustomers.akey} ;;
    relationship: many_to_one
  }

  join: tpmilestones {
    sql_on: ${tpmilestones.akey} = ${tpcustomers.akey} ;;
    relationship: one_to_one
  }

  join: account {
    sql_on: ${account.domain} = ${tpadmins.domain}  ;;
    relationship: one_to_many
  }
}
