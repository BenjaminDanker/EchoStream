﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;

namespace es.data
{
    public class Requests
    {
        public void addAccount(string firstname, string lastname, string companyname, string website, string email, string phone, string address, string password)
        {
            var context = new DataEntities();

            var row = new User() { FirstName = firstname, LastName = lastname, Username = null, Email = email, PasswordHash = password, RegistrationDate = DateTime.Now, IsClient = true, DeviceID = "PC", IsVerified = false, Website = website, Phone = phone, Address = address};
            context.Users.Add(row);

            context.SaveChanges();
        }
        public List<User> getNUsers(int N, int skipCount)
        {
            var context = new DataEntities();

            var row = context.Users.OrderByDescending(sp => sp.FirstName).Skip(skipCount).Take(N).ToList();

            return row;
        }
        public List<User> getSearchUsers(string search, int N, int skipCount)
        {
            var context = new DataEntities();

            List<User> users = context.Users.Where(sp => sp.FirstName.Contains(search)).OrderBy(sp => sp.FirstName).Skip(skipCount).Take(N).ToList();

            return users;
        }


        public List<Content> getSearchContent(string search, int N, int skipCount)
        {
            var context = new DataEntities();

            List<Content> content = context.Contents.Where(sp => sp.Title.Contains(search)).OrderByDescending(sp => sp.PublishedDate).Skip(skipCount).Take(N).ToList();

            return content;
        }

        
        public void addContent(string title, string contentBody, string tags, bool isClientVisible, bool isProspectVisible)
        {
            var context = new DataEntities();

            var row = new Content() { Title = title, ContentBody = contentBody, ContentType = null, CategoryID = null, Tags = tags, PublishedDate = DateTime.Now, IsActive = true, isClientVisible = isClientVisible, isProspectVisible = isProspectVisible };
            context.Contents.Add(row);

            context.SaveChanges();
        }
        public void removeContent(int contentID)
        {
            var context = new DataEntities();

            var row = context.Contents.Find(contentID);
            context.Contents.Remove(row);

            context.SaveChanges();
        }
        public List<Content> getNContent(int N, int skipCount)
        {
            var context = new DataEntities();

            var row = context.Contents.OrderByDescending(sp => sp.PublishedDate).Skip(skipCount).Take(N).ToList();

            return row;
        }


        public void addCategory(string categoryName)
        {
            var context = new DataEntities();

            var row = new Category() {CategoryName = categoryName};
            context.Categories.Add(row);

            context.SaveChanges();
        }
        public void removeCategory(string categoryName)
        {
            var context = new DataEntities();

            var row = context.Categories.FirstOrDefault(CategoryName => CategoryName.CategoryName == categoryName);
            context.Categories.Remove(row);

            context.SaveChanges();
        }
        public List<string> getCategories()
        {
            var context = new DataEntities();

            List<string> categoryList = new List<string>();
            foreach (var category in context.Categories)
            {
                categoryList.Add(category.CategoryName);
            }

            return categoryList;
        }
    }
}
